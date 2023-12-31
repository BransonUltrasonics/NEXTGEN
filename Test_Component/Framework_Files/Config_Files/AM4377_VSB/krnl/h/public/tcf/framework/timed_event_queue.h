/*******************************************************************************
 * Copyright (c) 2010, 2011 Wind River Systems, Inc. and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * and Eclipse Distribution License v1.0 which accompany this distribution.
 * The Eclipse Public License is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * and the Eclipse Distribution License is available at
 * http://www.eclipse.org/org/documents/edl-v10.php.
 * You may elect to redistribute this code under either of these licenses.
 *
 * Contributors:
 *     Wind River Systems - initial API and implementation
 *******************************************************************************/

/*
 * Event queue manager.
 * An Event is a data pointer plus a function pointer (a.k.a. event handler).
 *
 * Posting an event means placing it into an event queue.
 * Dispatching an event means removing it from the queue and calling the
 * event's function pointer with its event data as an argument.
 *
 * All events are dispatched by a single thread - the dispatch thread. This
 * makes it safe to access global data structures from event handlers without
 * further synchronization, while allowing for high levels of concurrency.
 */

#ifndef D_timed_event_queue
#define D_timed_event_queue

#include <tcf/framework/event_queue.h>  /* for struct event_node */

struct timed_event_node {
    LINK list_node;
    struct event_node event;
    struct event_queue * destination_queue;
    struct timespec runtime;
};

/*
 * Causes an event to have its handler function called in the event queue's
 * dispatch thread after the given delay. Events are dispatched in same order
 * as queued. If post_event() is called from the dispatching thread the handler
 * will still be deferred until all pending events have been processed.
 *
 * This function can be invoked from any thread.
 *
 * destination - the event queue which should dispatch the requested event
 * event - the event to be dispatched.
 * delay - the number of microseconds to delay dispatch of this event
 */
extern void timed_event_queue_post_event(struct timed_event_node * event, struct event_queue * destination, unsigned long delay);

/*
 * Returns true if the calling thread is the timed event dispatching thread.
 */
extern int is_timed_event_queue_thread(void);

/*
 * Cancel pending event, or if event is not pending and 'wait' is true then
 * wait for matching event to be posted.  Can only be called from the dispatch
 * thread.  Returns true if a posted event was cancelled.
 */
extern int timed_event_queue_cancel_event(struct timed_event_node * event_to_cancel);

/*
 * Start processing this event queue.
 */
extern void timed_event_loop_run(void);

/*
 * Cancel event loop.
 * The function causes event_loop_run() to stop event dispatching and return.
 */
extern void timed_event_loop_cancel(void);

/*
 * Initialize the global timed event queue.
 * Should be called from before executing event_loop_run().
 */
extern void timed_event_queue_init(void);

/*
 * Release resources associated with this event queue.
 */
extern void timed_event_queue_destroy(void);
#endif /* D_timed_event_queue */
