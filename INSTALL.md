An INSTALL.md file with installation instructions. These instructions should include notes illustrating a very basic usage example or a method to test the installation. This could be, for instance, information on what output to expect that confirms that the code is installed and working; and that the code is doing something interesting and useful.


Usage of Fax:

1. Prepare an Android device or emulator and connect it to you computer.

2. clone the project to your computer. 

3. [Preprocess]
Put the apk under test under the [apk_input_dir], and get the result in the [apk_output_dir].
python  script/0_prerocess.py  [apk_input_dir]  [apk_output_dir]
e.g., python  script/0_prerocess.py  apk  apk_processed
Then the activities will be exposed, the app will be instrumented, and then installed on the device.
Please log in the app first and grant all the permission that the app asked.

4.[Test Generation]
python  script/1_generateTestCases.py  lib/Fax0108.jar [apk_input_dir]  [testcase_dir] [execute_info_dir] [max_number_of_path]
e.g., python  script/1_generateTestCases.py  lib/Fax0108.jar  apk Result_testGen  executeInfo 10000 

5. [Fax Launching Test]
python script/2_launchActs.py [testcase_dir]  [launch_dir] 
e.g., python script/2_launchActs.py Result_testGen Result_launch

6. [Detect Crashes for Fax Launching]
python script/3_findCrashes.py [testcase_dir]  [launch_dir] 
e.g., python script/3_findCrashes.py Result_testGen Result_launch

7. [Fax Exploration Test]
python script/5_FairAndroidExploer.py [launch_dir]  [explore_dir]  [testcase_dir] [apk_output_dir] [EA/All]
Set EA if you want to set only EA as the exploration entry.
Set All if you want to set all activities as the exploration entry.
e.g., python script/5_FairAndroidExploer.py Result_launch Result_explore_EA Result_testGen apk_processed EA

6. [Detect Crashes for Fax Exploration]
python script/2_launchActs.py [testcase_dir]  [explore_dir] 
e.g., python script/3_findCrashes.py Result_testGen  Result_explore_EA

7. [Calculate Coverage Result]
python script/7_collectLogcat.py  [testcase_dir]  [explore_dir]  [apk_output_dir]
e.g., python script/7_collectLogcat.py  Result_testGen  Result_explore_EA apk_processed

-------------------------------------------------
For example, you can run:
python  script/run.py
