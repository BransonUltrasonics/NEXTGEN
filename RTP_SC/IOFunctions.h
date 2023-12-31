/*
 * IOFunctions.h
 *
 *  Created on: Dec 5, 2017
 *      Author: dshilonie
 */

#ifndef SRC_IOFUNCTIONS_H_
#define SRC_IOFUNCTIONS_H_

#include "state.h"
   
class DigitalIO
{
public:
	
	// max IO functions
	typedef	enum
	{
		INPUT_FUNCTION_NONE,
		INPUT_DISABLE,
		INPUT_CUSTOM,
		INPUT_SONIC_DISABLE,
		INPUT_CYCLE_ABORT,
		INPUT_ALARM_RESET,
		INPUT_TOOLING_READY,
		INPUT_CYCLE_SYNC,
		INPUT_PART_PRESENT,
		INPUT_REJECT_CONFIRM,
		INPUT_GROUND_DETECT,
		INPUT_HOLD_DELAY,
		INPUT_PSWD_OVERRIDE,
		INPUT_HORN_SEEK,
		INPUT_AC_HOME,
		INPUT_AC_READY,
		
		INPUT_FUNCTION_MAX,
	
		OUTPUT_FUNCTION_NONE,
		OUTPUT_DISABLED,
		OUTPUT_CUSTOM,
		OUTPUT_BEEPER,
		OUTPUT_PRESET_TRANS,
		OUTPUT_PRESET_1,
		OUTPUT_PRESET_2,
		OUTPUT_PRESET_4,
		OUTPUT_PRESET_8,
		OUTPUT_PRESET_16,
		OUTPUT_PRESET_32,
		OUTPUT_AC_HOME,
		OUTPUT_AC_READY,
		OUTPUT_SOLENOID,
		OUTPUT_ALARM_GENERAL,
		OUTPUT_ALARM_CUSTOM,
		OUTPUT_AC_CLEAR,
		OUTPUT_SUSPECT_LIMIT,
		OUTPUT_REJECT_LIMIT,
		OUTPUT_CYCLE_RUN,
		OUTPUT_ULTRASONIC,
		OUTPUT_PB_RELEASE,
		OUTPUT_AFTERBURST,
		OUTPUT_CYCLE_OK,
		OUTPUT_NO_CYCLE_ALARM,
		OUTPUT_PART_PRESENT,
		OUTPUT_TOOLING_READY,
		OUTPUT_CYCLE_SYNC,
		OUTPUT_PART_ID,
		OUTPUT_HOLD_ACTIVE,
		OUTPUT_WELD_ACTIVE,
		OUTPUT_HOLD_END,
		OUTPUT_AMP_STEP,
		
		OUTPUT_ENERGY_MINUS,
		OUTPUT_TIME_MINUS,
		OUTPUT_PEAKPWR_MINUS,
		OUTPUT_FREQ_MINUS,
		OUTPUT_ENERGY_PLUS,
		OUTPUT_TIME_PLUS,
		OUTPUT_PEAKPWR_PLUS,
		OUTPUT_PEAKCURR_PLUS,
		OUTPUT_FREQ_PLUS,
		OUTPUT_SYSTEM_READY,
		OUTPUT_ALARM_REJECT,
		OUTPUT_ALARM_SUSPECT,
				
		OUTPUT_OVERLOAD,
		OUTPUT_HORN_SEEK,
		OUTPUT_HORN_SCAN,
		OUTPUT_MEMORY_STORE,
		OUTPUT_MEMORY_CLEAR,
		OUTPUT_PSWD_OVERRIDE,
				
		OUTPUT_FUNCTION_MAX
		
	} LINE_FUNCTION;
	

	typedef	enum
	{
		STATE_ACTIVE_LOW,
		STATE_ACTIVE_HIGH,

		STATE_NONE
	} LINE_STATE;
	
	typedef	enum
	{
		SOURCE_POWERSUPPLY,
		SOURCE_ACTUATOR,
		SOURCE_FIELDBUS,

		SOURCE_NONE
	} LINE_SOURCE;

	typedef	enum
	{
		LINE_LOW,
		LINE_HIGH,
		
		LINE_NONE

	} LINE_VALUE;

	typedef	enum
	{
		INPUT_NOT_ASSERTED,
		INPUT_ASSERTED,
		
		INPUT_NONE

	} INPUT_STATE;

	typedef	enum
	{
		STATE_CONTINUE,
		STATE_RETAIN

	} STATE_DISPOSITION;

	typedef struct {
		LINE_FUNCTION		function;
		LINE_STATE			state;
		LINE_SOURCE			source;
	
	} DIGITAL_FUNCTION, * pDIGITAL_FUNCTION;


	DigitalIO (	UINT16 line = 0, LINE_FUNCTION function = INPUT_FUNCTION_NONE, LINE_STATE state = STATE_NONE, LINE_SOURCE source = SOURCE_NONE)
	{
		_line = line;
		_function = function;
		_state = state;
		_source = source;
	};
	virtual ~DigitalIO () {};
	
	
protected:

	virtual LINE_FUNCTION	GetFunction 	() {return INPUT_FUNCTION_NONE;}
	virtual LINE_STATE		GetState 		() { return STATE_NONE;}
	virtual LINE_SOURCE		GetSource 		() { return SOURCE_NONE;}
	
	UINT16				_line;
	
	LINE_FUNCTION		_function;
	LINE_STATE			_state;
	LINE_SOURCE			_source;
};


class DigitalInput : public DigitalIO 
{
public:
	
	DigitalInput (UINT16 line = 0, LINE_FUNCTION function = INPUT_FUNCTION_NONE, LINE_STATE state = STATE_NONE, LINE_SOURCE source = SOURCE_NONE);
	~DigitalInput ();

	LINE_FUNCTION	GetFunction 	();
	LINE_STATE		GetState 		();
	LINE_SOURCE		GetSource 		();
	
	LINE_VALUE		GetValue 		();
	void			SetValue 		(LINE_VALUE value);
	UINT16			MapJ710ToJ58 (UINT16 line);
	
private:
	
	
	LINE_VALUE		_value;
	
};


class DigitalOutput : public DigitalIO 
{
public:
	
	DigitalOutput (UINT16 line = 0, LINE_FUNCTION	function = OUTPUT_FUNCTION_NONE, LINE_STATE state = STATE_NONE, LINE_SOURCE source = SOURCE_NONE);
	~DigitalOutput ();
	
	LINE_FUNCTION	GetFunction 	();
	LINE_STATE		GetState 		();
	LINE_SOURCE		GetSource 		();
	
	bool			SetValue 		(LINE_VALUE value);

private:
	
	UINT16			MapJ710ToJ58 (UINT16 line);
	
};

#endif /* SRC_IOFUNCTIONS_H_ */
