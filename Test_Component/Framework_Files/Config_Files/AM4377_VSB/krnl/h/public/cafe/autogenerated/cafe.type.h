/* Copyright (c) 2014-2016 Wind River Systems, Inc.
 *
 * The right to copy, distribute, modify or otherwise make use
 * of this software may be licensed only pursuant to the terms
 * of an applicable Wind River license agreement.
 */

/* This file has been autogenerated by cafe-type2h(1). */

#ifndef CAFE_TYPE2H_CAFE_TYPE_autogenerated_h
#define CAFE_TYPE2H_CAFE_TYPE_autogenerated_h

#ifdef __cplusplus
extern "C" {
#endif

#define cafe_ADDRESS_VT_DEF "N[cafe.ADDRESS]"
#define cafe_ADDRESS_VT_REF "t[cafe.ADDRESS]"
#define cafe_ADDRESS_VT_NAT "n[cafe.ADDRESS]"

#define cafe_CAPABILITY_VT_DEF "N[cafe.CAPABILITY]"
#define cafe_CAPABILITY_VT_REF "t[cafe.CAPABILITY]"
#define cafe_CAPABILITY_VT_NAT "n[cafe.CAPABILITY]"

#define cafe_COUNTER_METRIC_CLASS_VT_DEF "N[cafe.COUNTER_METRIC_CLASS,v[is_sampled,?]v[value,Q],n[cafe.METRIC_CLASS]]"
#define cafe_COUNTER_METRIC_CLASS_VT_REF "t[cafe.COUNTER_METRIC_CLASS]"
#define cafe_COUNTER_METRIC_CLASS_VT_NAT "n[cafe.COUNTER_METRIC_CLASS]"

#define cafe_CURRENT_CORE_ID_VT_DEF "N[cafe.CURRENT_CORE_ID]"
#define cafe_CURRENT_CORE_ID_VT_REF "t[cafe.CURRENT_CORE_ID]"
#define cafe_CURRENT_CORE_ID_VT_NAT "n[cafe.CURRENT_CORE_ID]"

#define cafe_DESCRIPTION_VT_DEF "N[cafe.DESCRIPTION,v[text,s]]"
#define cafe_DESCRIPTION_VT_REF "t[cafe.DESCRIPTION]"
#define cafe_DESCRIPTION_VT_NAT "n[cafe.DESCRIPTION]"

#define cafe_HISTORY_METRIC_CLASS_VT_DEF "N[cafe.HISTORY_METRIC_CLASS,,n[cafe.METRIC_CLASS]]"
#define cafe_HISTORY_METRIC_CLASS_VT_REF "t[cafe.HISTORY_METRIC_CLASS]"
#define cafe_HISTORY_METRIC_CLASS_VT_NAT "n[cafe.HISTORY_METRIC_CLASS]"

#define cafe_INVERT_VT_DEF "N[cafe.INVERT]"
#define cafe_INVERT_VT_REF "t[cafe.INVERT]"
#define cafe_INVERT_VT_NAT "n[cafe.INVERT]"

#define cafe_INVERTABLE_VT_DEF "N[cafe.INVERTABLE]"
#define cafe_INVERTABLE_VT_REF "t[cafe.INVERTABLE]"
#define cafe_INVERTABLE_VT_NAT "n[cafe.INVERTABLE]"

#define cafe_LABEL_VT_DEF "N[cafe.LABEL,v[label,s]]"
#define cafe_LABEL_VT_REF "t[cafe.LABEL]"
#define cafe_LABEL_VT_NAT "n[cafe.LABEL]"

#define cafe_METRIC_CATEGORY_VT_DEF "N[cafe.METRIC_CATEGORY,v[id,s]v[label,s]v[description,s,,\"\"]v[cattype,s,,\"COMMON\"]v[url,s]]"
#define cafe_METRIC_CATEGORY_VT_REF "t[cafe.METRIC_CATEGORY]"
#define cafe_METRIC_CATEGORY_VT_NAT "n[cafe.METRIC_CATEGORY]"

#define cafe_METRIC_CLASS_VT_DEF "N[cafe.METRIC_CLASS]"
#define cafe_METRIC_CLASS_VT_REF "t[cafe.METRIC_CLASS]"
#define cafe_METRIC_CLASS_VT_NAT "n[cafe.METRIC_CLASS]"

#define cafe_PERSISTENT_VT_DEF "N[cafe.PERSISTENT]"
#define cafe_PERSISTENT_VT_REF "t[cafe.PERSISTENT]"
#define cafe_PERSISTENT_VT_NAT "n[cafe.PERSISTENT]"

#define cafe_PRIVATE_VT_DEF "N[cafe.PRIVATE]"
#define cafe_PRIVATE_VT_REF "t[cafe.PRIVATE]"
#define cafe_PRIVATE_VT_NAT "n[cafe.PRIVATE]"

#define cafe_SET_METRIC_CLASS_VT_DEF "N[cafe.SET_METRIC_CLASS,,n[cafe.METRIC_CLASS]]"
#define cafe_SET_METRIC_CLASS_VT_REF "t[cafe.SET_METRIC_CLASS]"
#define cafe_SET_METRIC_CLASS_VT_NAT "n[cafe.SET_METRIC_CLASS]"

#define cafe_SUM_METRIC_CLASS_VT_DEF "N[cafe.SUM_METRIC_CLASS,,n[cafe.METRIC_CLASS]]"
#define cafe_SUM_METRIC_CLASS_VT_REF "t[cafe.SUM_METRIC_CLASS]"
#define cafe_SUM_METRIC_CLASS_VT_NAT "n[cafe.SUM_METRIC_CLASS]"

#define cafe_TYPE_TRANSFORM_VT_DEF "N[cafe.TYPE_TRANSFORM,v[type_name,s]]"
#define cafe_TYPE_TRANSFORM_VT_REF "t[cafe.TYPE_TRANSFORM]"
#define cafe_TYPE_TRANSFORM_VT_NAT "n[cafe.TYPE_TRANSFORM]"

#define cafe_address_space_id_VT_DEF "N[cafe.address_space_id]"
#define cafe_address_space_id_VT_REF "t[cafe.address_space_id]"
#define cafe_address_space_id_VT_NAT "n[cafe.address_space_id]"

#define cafe_callstack_VT_DEF "N[cafe.callstack]"
#define cafe_callstack_VT_REF "t[cafe.callstack]"
#define cafe_callstack_VT_NAT "n[cafe.callstack]"

#define cafe_core_id_VT_DEF "S[cafe.core_id,v[core,I,n[cafe.CURRENT_CORE_ID]]]"
#define cafe_core_id_VT_REF "t[cafe.core_id]"

#define cafe_input_any_ctx_VT_DEF "N[cafe.input_any_ctx]"
#define cafe_input_any_ctx_VT_REF "t[cafe.input_any_ctx]"
#define cafe_input_any_ctx_VT_NAT "n[cafe.input_any_ctx]"

#define cafe_metadata_VT_DEF "S[cafe.metadata,v[eid,Q]v[event_data,a[s]]]"
#define cafe_metadata_VT_REF "t[cafe.metadata]"

#define cafe_num_cores_VT_DEF "S[cafe.num_cores,v[num_cores,i]]"
#define cafe_num_cores_VT_REF "t[cafe.num_cores]"

#define cafe_output_inst_thread_VT_DEF "N[cafe.output_inst_thread]"
#define cafe_output_inst_thread_VT_REF "t[cafe.output_inst_thread]"
#define cafe_output_inst_thread_VT_NAT "n[cafe.output_inst_thread]"

#define cafe_output_session_thread_VT_DEF "N[cafe.output_session_thread]"
#define cafe_output_session_thread_VT_REF "t[cafe.output_session_thread]"
#define cafe_output_session_thread_VT_NAT "n[cafe.output_session_thread]"

#define cafe_overflow_VT_DEF "S[cafe.overflow,v[count,L]]"
#define cafe_overflow_VT_REF "t[cafe.overflow]"

#define cafe_periodic_VT_DEF "N[cafe.periodic]"
#define cafe_periodic_VT_REF "t[cafe.periodic]"
#define cafe_periodic_VT_NAT "n[cafe.periodic]"

#define cafe_sample_freq_VT_DEF "S[cafe.sample_freq,v[value,Q]p[rate,L,,100]]"
#define cafe_sample_freq_VT_REF "t[cafe.sample_freq]"

#define cafe_setting_VT_DEF "N[cafe.setting]"
#define cafe_setting_VT_REF "t[cafe.setting]"
#define cafe_setting_VT_NAT "n[cafe.setting]"

#define cafe_setting_result_VT_DEF "N[cafe.setting_result]"
#define cafe_setting_result_VT_REF "t[cafe.setting_result]"
#define cafe_setting_result_VT_NAT "n[cafe.setting_result]"

#define cafe_skipcount_VT_DEF "S[cafe.skipcount,v[value,Q]p[limit,Q,,1]]"
#define cafe_skipcount_VT_REF "t[cafe.skipcount]"

#define cafe_skipcount_actual_limit_VT_DEF "S[cafe.skipcount_actual_limit,v[actual_limit,Q]]"
#define cafe_skipcount_actual_limit_VT_REF "t[cafe.skipcount_actual_limit]"

#define cafe_stacktrace_VT_DEF "S[cafe.stacktrace,v[stack,a[L],n[cafe.ADDRESS]]]"
#define cafe_stacktrace_VT_REF "t[cafe.stacktrace]"

#define cafe_timeofday_VT_DEF "S[cafe.timeofday,v[sec,L]v[nsec,L]]"
#define cafe_timeofday_VT_REF "t[cafe.timeofday]"

#define cafe_timestamp_VT_DEF "S[cafe.timestamp,v[timestamp,Q]]"
#define cafe_timestamp_VT_REF "t[cafe.timestamp]"

#define cafe_timestamp_config_VT_DEF "S[cafe.timestamp_config,v[frequency,Q]]"
#define cafe_timestamp_config_VT_REF "t[cafe.timestamp_config]"

#define cafe_wildcard_VT_DEF "S[cafe.wildcard]"
#define cafe_wildcard_VT_REF "t[cafe.wildcard]"

#define CAFE_TYPE_ALL_VT_DEFS \
	cafe_ADDRESS_VT_DEF \
	cafe_CAPABILITY_VT_DEF \
	cafe_COUNTER_METRIC_CLASS_VT_DEF \
	cafe_CURRENT_CORE_ID_VT_DEF \
	cafe_DESCRIPTION_VT_DEF \
	cafe_HISTORY_METRIC_CLASS_VT_DEF \
	cafe_INVERT_VT_DEF \
	cafe_INVERTABLE_VT_DEF \
	cafe_LABEL_VT_DEF \
	cafe_METRIC_CATEGORY_VT_DEF \
	cafe_METRIC_CLASS_VT_DEF \
	cafe_PERSISTENT_VT_DEF \
	cafe_PRIVATE_VT_DEF \
	cafe_SET_METRIC_CLASS_VT_DEF \
	cafe_SUM_METRIC_CLASS_VT_DEF \
	cafe_TYPE_TRANSFORM_VT_DEF \
	cafe_address_space_id_VT_DEF \
	cafe_callstack_VT_DEF \
	cafe_core_id_VT_DEF \
	cafe_input_any_ctx_VT_DEF \
	cafe_metadata_VT_DEF \
	cafe_num_cores_VT_DEF \
	cafe_output_inst_thread_VT_DEF \
	cafe_output_session_thread_VT_DEF \
	cafe_overflow_VT_DEF \
	cafe_periodic_VT_DEF \
	cafe_sample_freq_VT_DEF \
	cafe_setting_VT_DEF \
	cafe_setting_result_VT_DEF \
	cafe_skipcount_VT_DEF \
	cafe_skipcount_actual_limit_VT_DEF \
	cafe_stacktrace_VT_DEF \
	cafe_timeofday_VT_DEF \
	cafe_timestamp_VT_DEF \
	cafe_timestamp_config_VT_DEF \
	cafe_wildcard_VT_DEF \

/**
 * cafe.core_id - specifies core on which an event or events were generated
 *
 * This event indicates the core on which subsequent events were generated
 */
struct cafe_core_id {
	unsigned int core;
};

struct cafe_metadata {
	unsigned long long eid;
	struct cafe_vm_dynarray event_data;
};

/**
 * cafe.num_cores - specifies number of cores in system
 */
struct cafe_num_cores {
	int num_cores;
};

struct cafe_overflow {
	unsigned long count;
};

/**
 * cafe.sample_freq - specify the frequency at which events are sampled
 *
 * This type controls the frequency at which the event source samples
 * an event.  The "rate" defaults to 100Hz.
 *
 * An instance of this type should be specified when enabling the base
 * event.  If sampled events are supported by the event source, an
 * instance of this type will be sent as orthogonal data and the
 * "value" will be the number of events that happened during the
 * period.
 */
struct cafe_sample_freq {
	unsigned long long value;
};

/**
 * cafe.skipcount - control the rate at which events are sent
 *
 * This event indicates how many occurrences of an event should be
 * skipped before the event is dispatched.  This event can help reduce
 * the rate at which events are sent through the system (e.g., send
 * only every 10,000 semTake event).
 *
 * The "limit" parameter specifies how many events should be
 * accumulated before the event is dispatched.
 *
 * The "value" field indicates how many events were actually skipped.
 *
 * The "limit" and the request "value" may be legitimately different.
 * For example, in the case of hardware performance counters (HPC) you
 * may request that every 10,000 cache miss event be sent, but the
 * actual skip "value" may be greater than the requested limit because
 * the counter value is read some time later.
 *
 * To enable skipcounts, an instance of this type should be specified
 * when enabling the base event.  If skipcounts are supported by the
 * event source, a cafe.skipcount event will be sent as orthogonal
 * data.
 */
struct cafe_skipcount {
	unsigned long long value;
};

/**
 * cafe.skipcount_actual_limit - the actual skipcount limit value used.
 *
 * This event represents the actual skipcount limit used and it is stored
 * in the "actual_limit" field.
 *
 * If supported by an event processor, the event will be sent as orthogonal
 * data.
 */
struct cafe_skipcount_actual_limit {
	unsigned long long actual_limit;
};

struct cafe_stacktrace {
	struct cafe_vm_dynarray stack;
};

/**
 * cafe.timeofday - date and time in seconds and nanoseconds
 *
 * This event specifies <sec> since 1970-01-01 GMT and nano-seconds
 * <nsec> within the second. This is intended to be a primary event
 * that is sent once or periodically by event providers that supports
 * it.  Timestamp information can accommodate this event which
 * provides a way to synchronize the two time sources.
 */
struct cafe_timeofday {
	unsigned long sec;
	unsigned long nsec;
};

/**
 * cafe.timestamp - relative time in specified frequency
 *
 * This event specifies the current relative time in the frequency
 * specified by the cafe.timestamp_freq event.  This is intended to be
 * orthogonal data to primary events.
 */
struct cafe_timestamp {
	unsigned long long timestamp;
};

/**
 * cafe.timestamp_config - specifies timestamp frequency
 *
 * This event specifies the current frequency of the timestamp source
 * in cafe.  This is intended to be a primary event.  The timestamp
 * configuration can change over the life of an event log, for example due
 * to power management.  In such cases any associated cafe.timestamp event
 * should represent the timestamp when the frequency was changed, to allow a
 * client to calculate the time.  If it is not possible to give the precise
 * timestamp of when the frequency changed, a log could contain periodic
 * cafe.timeofday events to resynchronize the timestamp to the date and time.
 *
 * If the frequency field is 0 then its value is ULLONG_MAX + 1.
 */
struct cafe_timestamp_config {
	unsigned long long frequency;
};

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif