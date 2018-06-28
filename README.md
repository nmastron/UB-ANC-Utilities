# UB-ANC-Utilities

This repo contains utilities for the [UB-ANC Emulator](https://github.com/jmodares/UB-ANC-Emulator).

# Utility details

## `start_emulator_logging.sh`
This script can be used instead of [`start_emulator.sh`](https://github.com/jmodares/UB-ANC-Emulator/blob/master/script/start_emulator.sh) to launch the UB-ANC Emulator. This alternative script will do the following

* Log all of the agents' outputs in their local directories (i.e., the nth MAV's log will be in **/objects/mav_n/**) named with the format **log_agent_YYYY-MM-DD-HH-MM-SS.log**
* Send all of their outputs in real-time to **stdout**.

Because of the large amount of information that is logged and displayed, you may experience a performance hit if you are emulating a large number of agents.
