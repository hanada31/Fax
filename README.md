A README.md main file describing what the artifact does and where it can be obtained (with hidden links and access password if necessary). Also, there should be a clear description of how to reproduce the results presented in the paper.

# Fax (Fair Android Explorer)
Effective Testing of Android Applications by Constructing Activity Launching Contexts

-Fax
  -Coverage: Coverage result in paper
  -Crashes: Coverage result in paper
  -IntentBench: Self-designed benchmark
  -FaxTool: Runable tool Fax
  
## Requirements:

* Install Java
* Install Ant
* Install Python 2.7
* Fax requires that the Z3 dynamic link library (libz3.so on Unix-like platforms) as well as the dynamic link library for the Z3/Java API (libz3java.so on Unix-like platforms) be in your dynamic library path ($LD_LIBRARY_PATH on Unix-like platforms; just PATH on Windows).
  * For Windows: copy lib/libz3/libz3.dll and lib/libz3/libz3java.dll to %JAVA_HOME%\bin\.
  * For Unix-like platforms: 
    * add java.library.path into file /etc/profile (export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/[your_library_path]).
    * copy lib/libz3/libz3.so and lib/libz3/libz3java.so to [your_library_path]
    * source /etc/profile
* Prepare Android environment

## Usage of Fax:

* Prepare an Android device or emulator and connect it to you computer.

* Clone the project to your computer. 

* Preprocess
Put the apk under test under the [apk_input_dir], and get the result in the [apk_output_dir].
python  script/0_prerocess.py  [apk_input_dir]  [apk_output_dir]
e.g., python  script/0_prerocess.py  apk  apk_processed
Then the activities will be exposed, the app will be instrumented, and then installed on the device.
Please log in the app first and grant all the permission that the app asked.

* Test Generation
python  script/1_generateTestCases.py  lib/Fax0108.jar [apk_input_dir]  [testcase_dir] [execute_info_dir] [max_number_of_path]
e.g., python  script/1_generateTestCases.py  lib/Fax0108.jar  apk Result_testGen  executeInfo 10000 

* Fax Launching Test
python script/2_launchActs.py [testcase_dir]  [launch_dir] 
e.g., python script/2_launchActs.py Result_testGen Result_launch

* Detect Crashes for Fax Launching
python script/3_findCrashes.py [testcase_dir]  [launch_dir] 
e.g., python script/3_findCrashes.py Result_testGen Result_launch

* Fax Exploration Test
python script/5_FairAndroidExploer.py [launch_dir]  [explore_dir]  [testcase_dir] [apk_output_dir] [EA/All]
Set EA if you want to set only EA as the exploration entry.
Set All if you want to set all activities as the exploration entry.
e.g., python script/5_FairAndroidExploer.py Result_launch Result_explore_EA Result_testGen apk_processed EA

* Detect Crashes for Fax Exploration
python script/2_launchActs.py [testcase_dir]  [explore_dir] 
e.g., python script/3_findCrashes.py Result_testGen  Result_explore_EA

* Calculate Coverage Result
python script/7_collectLogcat.py  [testcase_dir]  [explore_dir]  [apk_output_dir]
e.g., python script/7_collectLogcat.py  Result_testGen  Result_explore_EA apk_processed

-------------------------------------------------
For example, you can run:
python  script/run.py


Note that, for "no libz3java" error, put libs libz3java.dll & libz3.dll (from https://github.com/z3prover/releases) under the folder $JAVA_HOME/jdk_version/bin
