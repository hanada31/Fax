# Fax--Fair Android Explorer 
This artifact is for the paper: "Multiple-Entry Testing of Android Applications by Constructing Activity Launching Contexts".  

<p align="center">
<img src="overview/Fax.jpg" width="600">
</p>

Fax is a multiple-entry testing tool for testing Android applications, which constructs activity launching contexts for apps and proposes a multiple-entry testing framework.


## Publication ##
The paper PDF can be found at https://hanada31.github.io/pdf/icse20_fax.pdf
```
@InProceedings{jiwei:icse:2020,
author = {Jiwei Yan and Hao Liu and Linjie Pan and Jun Yan and Jian Zhang and Bin Liang},
title = {Multiple-Entry Testing of Android Applications by Constructing Activity Launching Contexts},
booktitle = {Proceedings of the 42nd International Conference on Software Engineering},
series = {ICSE '20},
year = {2020},
pages={457-468}}

```

## Structure:
- Fax
  - Coverage: Coverage result in paper
  - Crashes: Coverage result in paper
  - IntentBench: Self-designed benchmark
  - FaxTool: Runable tool Fax
  
## Requirements:
* Install Java
* Install Ant
* Install Python 2.7
* Fax requires the Z3 dynamic link library as well as the dynamic link library for the Z3/Java API .
  * For Windows: copy lib/libz/libz3.dll and lib/libz3/libz3java.dll to %JAVA_HOME%\bin\.
  * For Unix-like platforms: 
    * copy lib/libz3/libz3.so and lib/libz3/libz3java.so to [your\_library\_path]
	 * add java.library.path into the enviroment variable file [enviroment_path], e.g., ~/.bash_profile, /etc/profile.
	   i.e., "export LD\_LIBRARY\_PATH=$LD\_LIBRARY\_PATH:[your\_library\_path]" to file [enviroment\_path].
    * save the modification (source [enviroment\_path])
* Prepare Android environment ( Android sdk installation information, https://developer.android.com/), the version of Android SDK Tools should lower than 25.2.3.

* Run "java -version", "python", "ant -version", "android create project" to check whether these tools are successfully configured.

## Usage of Fax:
* Prepare an Android device or emulator and connect it to you computer. Turn the setting item "developer mode" on and allow "usb debugging".  
* Clone the project to your computer. 

* **For quick start, you can run: runFax.sh or runFax.bat**  
	*To modify the exploration time of Fax\_ex, please update the variable exploration_time in file FaxTool\script\run.py.   
	In our paper, the exploration time is one hour (3600). If you want a quick validation, use the default value in Fax (60).  

* Preprocess
Put the apk under test under the [apk_input_dir], and get the result in the [apk_output_dir].  
python  script/Prerocess.py  [apk_input_dir]  [apk_output_dir]  
e.g., python  script/Prerocess.py  apk  apk_processed  
Then the activities will be exposed, the app will be instrumented, and then installed on the device.  
For log-in required apps, you can log-in first after installation to improve the exploration coverage.    


* Test Generation
python  script/GenerateTestCases.py  lib/Fax0108.jar [apk_input_dir]  [testcase_dir] [execute_info_dir] [max_number_of_path]  
e.g., python  script/GenerateTestCases.py  lib/Fax0108.jar  apk Result_testGen  executeInfo 10000  
Get results in folder [testcase_dir].

* Fax Launching Test
python script/LaunchActs.py [testcase_dir]  [launch_dir]  
e.g., python script/LaunchActs.py Result_testGen Result_launch  
Get results in folder [launch_dir].

* Detect Crashes for Fax Launching
python script/FindCrashes.py [testcase_dir]  [launch_dir]   
e.g., python script/FindCrashes.py Result_testGen Result_launch  

* Fax Exploration Test
python script/FairAndroidExploer.py [launch_dir]  [explore_dir]  [testcase_dir] [apk_output_dir] [EA/All]  
Set EA if you want to set only EA as the exploration entry.   
Set All if you want to set all activities as the exploration entry.   
e.g., python script/FairAndroidExploer.py Result_launch Result_explore Result_testGen apk_processed ALL  
Get results in folder [explore_dir].

* Detect Crashes for Fax Exploration
python script/FindCrashes.py [testcase_dir]  [explore_dir]   
e.g., python script/FindCrashes.py Result_testGen  Result_explore  

* Calculate Coverage Result
python script/CollectLogcat.py  [testcase_dir]  [explore_dir]  [apk_output_dir]  
e.g., python script/CollectLogcat.py  Result_testGen  Result_explore apk_processed  


