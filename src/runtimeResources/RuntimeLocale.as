////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////


package runtimeResources
{
	import mx.collections.ArrayCollection;
	import mx.resources.IResourceManager;
	import mx.resources.ResourceBundle;
	import mx.resources.ResourceManager;

	public class RuntimeLocale
	{
		
		private var _supportedLanguage:ArrayCollection;
		
		public function get supportedLanguage():ArrayCollection
		{
			return _supportedLanguage;
		}
		public function set supportedLanguage(value:ArrayCollection):void
		{
			_supportedLanguage = value;
		}	
		
		
		private var _defaultLanguage:String;

		public function get defaultLanguage():String
		{
			return _defaultLanguage;
		}

		public function set defaultLanguage(value:String):void
		{
			_defaultLanguage = value;
		}
		
		
		public function RuntimeLocale()
		{
			_defaultLanguage = "en_US";
			_supportedLanguage = new ArrayCollection;
			_supportedLanguage.addItem({label:"English(United States)", data:"en_US"});
			_supportedLanguage.addItem({label:"English(United Kingdom)", data:"en_GB"});
			_supportedLanguage.addItem({label:"English(Australia)", data:"en_AU"});
			_supportedLanguage.addItem({label:"Dutch", data:"nl_NL"});
			_supportedLanguage.addItem({label:"Greek", data:"el_GR"});
			
			installResourcers_en_US();
			installResourcers_el_GR();
			installResourcers_en_AU();
			installResourcers_el_GR();
			installResourcers_nl_NL();
		}
		public function enumerateBundles():void 
		{
			trace ("");
			trace ("");
			var _resourceManager:IResourceManager = ResourceManager.getInstance();
			var bundleName:String = "messagestrings";
			{
				var bundle:ResourceBundle = ResourceBundle(_resourceManager.getResourceBundle("en_US", bundleName));
				for (var key:String in bundle.content) 
				{
					trace ('_resource.content["' + key +'"]=' + '"' +bundle.content[key]+'";');
				}
			}
		}

		protected function installResourcers_en_US():void
		{
			var _resourceManager:IResourceManager = ResourceManager.getInstance();
			var _resource:ResourceBundle = new ResourceBundle("en_US", "messagestrings");
			
			_resource.content["browse_btn_label"]="BROWSE";
			_resource.content["install_log_btn_label"]="INSTALL LOG";
			_resource.content["install_btn_label"]="INSTALL";
			_resource.content["close_btn_label"]="CLOSE";
			_resource.content["select_path_prompt"]="Enter Flex SDK path or browse to select a path";

			_resource.content["info_dowloading_air_runtime_kit_mac"]="Downloading Adobe AIR Runtime Kit for Mac from: ";
			_resource.content["info_finished_untaring"]="Finished untaring: ";
			_resource.content["info_dowloading_air_runtime_kit_windows"]="Downloading Adobe AIR Runtime Kit for Windows from: ";
			_resource.content["info_invoked_gui_mode"]="invoked in GUI mode";
			_resource.content["info_enter_valid_flex_sdk_path"]="Please enter valid directory path for the Flex SDK";
			_resource.content["info_select_directory"]="Select the directory where you want to install the Flex SDK";
			_resource.content["info_app_invoked"]="Invoked in command line mode with the following arguments: ";
			_resource.content["info_downloaded"]="Download complete ";
			_resource.content["info_abort_installation"]="Aborting Installation";
			_resource.content["info_unzipping"]="Uncompressing: ";
			_resource.content["info_installing_playerglobal_swc"]="Installing Adobe Flash Player playerglobal.swc from: ";
			_resource.content["info_installing_config_files"]="Installing frameworks configuration files configured for use with an IDE";
			_resource.content["info_creating_temp_dir"]="Creating temporary directory";
			_resource.content["info_installation_complete"]="Installation complete.";
			_resource.content["info_finished_unzipping"]="Finished uncompressing: ";
			_resource.content["info_dowloading_flex_sdk"]="Downloading Apache Flex SDK from: ";
			
			_resource.content["error_unable_to_copy_file"]="Unable to copy file ";
			_resource.content["error_config_xml_load"]="Error while trying to load XML configuration file: ";
			_resource.content["error_unable_to_download_flash_player_swc"]="Unable to download Flash Player swc";
			_resource.content["error_unable_to_delete_temp_directory"]="Unable to clean up temporary installation directories";
			_resource.content["error_unable_to_download_air_sdk"]="Unable to download Adobe AIR Runtime Kit";
			_resource.content["error_invalid_flash_player_swc_url"]="Flash Player swc URL invalid in configuration file";
			_resource.content["error_unsupported_operating_system"]="Unsupported operating system";
			_resource.content["error_invalid_sdk_url"]="Apache Flex SDK URL invalid in configuration file";
			_resource.content["error_invalid_air_sdk_url_mac"]="Adobe AIR SDK URL for Mac invalid in configuration file";
			_resource.content["info_creating_flex_home"]="Creating Apache Flex home";
			_resource.content["error_native_process_error"]="Native Process error unable to untar Adobe AIR SDK";
			_resource.content["error_invalid_air_sdk_url_windows"]="Adobe AIR SDK URL for Windows invalid in configuration file";
			_resource.content["error_unable_to_download_flex_sdk"]="Unable to download Apache Flex SDK";
			_resource.content["error_native_process_not_supported"]="Native Process not supported.  Unable to untar Adobe AIR SDK";
			_resource.content["error_unable_to_create_temp_directory"]="Unable to create temporary directory";
			_resource.content["error_invalid_flex_sdk_directory"]="Invalid Flex SDK directory selected";
			_resource.content["error_unable_to_install_config_files"]="Unable to install configuration files";
			
			_resource.content["config_url"]="ApacheFlexConfig.xml";
			_resource.content["apache_flex_url"]="http://incubator.apache.org/flex/";

			_resource.content["step_download_air_runtime_kit"]="Download Adobe AIR Runtime Kit";
			_resource.content["step_unzip_air_runtime_kit"]="Uncompress Adobe AIR Runtime Kit";
			_resource.content["step_unzip_flex_sdk"]="Uncompress Apache Flex SDK";
			_resource.content["step_download_flashplayer_swc"]="Download Flash Player swc";
			_resource.content["step_download_flex_sdk"]="Download Apache Flex SDK";
			_resource.content["step_install_config_files"]="Install Framework Configuration Files";
			_resource.content["step_create_directories"]="Create Directories";
			
			_resourceManager.addResourceBundle(_resource);
			_resourceManager.update();
		}
		
		protected function installResourcers_el_GR():void
		{
			var _resourceManager:IResourceManager = ResourceManager.getInstance();
			var _resource:ResourceBundle = new ResourceBundle("el_GR", "messagestrings");

			_resource.content["browse_btn_label"]="BROWSE";
			_resource.content["install_log_btn_label"]="Î±Ï�Ï‡ÎµÎ¯Î¿ ÎºÎ±Ï„Î±Î³Ï�Î±Ï†Î®Ï‚ ÎµÎ³ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·Ï‚";
			_resource.content["install_btn_label"]="Î•Î³ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·";
			_resource.content["close_btn_label"]="ÎˆÎ¾Î¿Î´Î¿Ï‚";
			_resource.content["select_path_prompt"]="Î Î»Î·ÎºÏ„Ï�Î¿Î»Î¿Î³Î®ÏƒÏ„Îµ Î· ÎµÏ€Î¹Î»Î­Î¾Ï„Îµ Î¼Î¹Î± Î­Î³ÎºÏ…Ï�Î· Î´Î¹Î±Î´Ï�Î¿Î¼Î® Î³Î¹Î± Ï„Î¿ Flex SDK";

			_resource.content["info_dowloading_air_runtime_kit_mac"]="Î›Î®ÏˆÎ· Adobe AIR Runtime Kit Î³Î¹Î± Mac Î±Ï€ÏŒ: ";
			_resource.content["info_finished_untaring"]="Î— Î±Ï€Î¿ÏƒÏ…Î¼Ï€Î¯ÎµÏƒÎ· Ï„ÎµÎ»ÎµÎ¯Ï‰ÏƒÎµ: ";
			_resource.content["info_dowloading_air_runtime_kit_windows"]="Î›Î®ÏˆÎ· Adobe AIR Runtime Kit Î³Î¹Î± Windows Î±Ï€ÏŒ: ";
			_resource.content["info_invoked_gui_mode"]="ÎšÎ»Î®ÏƒÎ· Î¼Îµ Î»ÎµÎ¹Ï„Î¿Ï…Ï�Î³Î¯Î± Î³Ï�Î±Ï†Î¹ÎºÎ¿Ï� Ï€ÎµÏ�Î¹Î²Î¬Î»Î»Î¿Î½Ï„Î¿Ï‚";
			_resource.content["info_enter_valid_flex_sdk_path"]="Î Î±Ï�Î±ÎºÎ±Î»ÏŽ ÎµÎ¹ÏƒÎ¬Î³ÎµÏ„Îµ Î¼Î¹Î± Î­Î³ÎºÏ…Ï�Î· Î´Î¹Î±Î´Ï�Î¿Î¼Î® ÎºÎ±Ï„Î±Î»ÏŒÎ³Î¿Ï… Î³Î¹Î± Ï„Î¿ the Flex SDK";
			_resource.content["info_installing_playerglobal_swc"]="Î•Î³ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ· Adobe Flash Player playerglobal.swc Î±Ï€ÏŒ: ";
			_resource.content["info_installation_complete"]="Î— ÎµÎ³ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ· Î¿Î»Î¿ÎºÎ»Î·Ï�ÏŽÎ¸Î·ÎºÎµ.";
			_resource.content["info_creating_temp_dir"]="Î”Î·Î¼Î¹Î¿Ï…Ï�Î³Î¯Î± Ï€Ï�Î¿ÏƒÏ‰Ï�Î¹Î½Î¿Ï� ÎºÎ±Ï„Î±Î»ÏŒÎ³Î¿Ï…";
			_resource.content["info_dowloading_flex_sdk"]="Î›Î®ÏˆÎ· Apache Flex SDK Î±Ï€ÏŒ: ";
			_resource.content["info_creating_flex_home"]="Î”Î·Î¼Î¹Î¿Ï…Ï�Î³Î¯Î± Î±Ï�Ï‡Î¹ÎºÎ¿Ï� ÎºÎ±Ï„Î±Î»ÏŒÎ³Î¿Ï… Î³Î¹Î± Apache Flex ";
			_resource.content["info_finished_unzipping"]="Î— Î±Ï€Î¿ÏƒÏ…Î¼Ï€Î¯ÎµÏƒÎ· Ï„ÎµÎ»ÎµÎ¯Ï‰ÏƒÎµ: ";
			_resource.content["info_downloaded"]="Î· Î»Î®ÏˆÎ· Î¿Î»Î¿ÎºÎ»Î·Ï�ÏŽÎ¸Î·ÎºÎµ ";
			_resource.content["info_select_directory"]="Î•Ï€Î¹Î»Î­Î¾Ï„Îµ Î­Î½Î± ÎºÎ±Ï„Î¬Î»Î¿Î³Î¿";
			_resource.content["info_app_invoked"]="ÎšÎ»Î®ÏƒÎ· Î¼Îµ Î»ÎµÎ¹Ï„Î¿Ï…Ï�Î³Î¯Î± Î³Ï�Î±Î¼Î¼Î®Ï‚ ÎµÎ½Ï„Î¿Î»ÏŽÎ½ Î¼Îµ Ï„Î± Î±ÎºÏŒÎ»Î¿Ï…Î¸Î± Î¿Ï�Î¯ÏƒÎ¼Î±Ï„Î±:";
			_resource.content["info_abort_installation"]="ÎœÎ±Ï„Î±Î¯Ï‰ÏƒÎ· ÎµÎ³ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·Ï‚";
			_resource.content["info_installing_config_files"]="Î•Î³ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ· Î±Ï�Ï‡ÎµÎ¯Ï‰Î½ Ï�Ï…Î¸Î¼Î¯ÏƒÎµÏ‰Î½ Î³Î¹Î±  frameworks Ï�Ï…Î¸Î¼Î¹ÏƒÎ¼Î­Î½Î± Î³Î¹Î± Ï‡Ï�Î®ÏƒÎ· IDE";
			_resource.content["info_unzipping"]="Î‘Î±Ï€Î¿ÏƒÏ…Î¼Ï€Î¯ÎµÏƒÎ·: ";
			
			_resource.content["error_unable_to_download_flash_player_swc"]="Î”ÎµÎ½ ÎµÎ¯Î½Î±Î¹ Î´Ï…Î½Î±Ï„Î® Î· Î»Î®ÏˆÎ· Ï„Î¿Ï… Flash Player swc";
			_resource.content["error_native_process_error"]="Î›Î¬Î¸Î¿Ï‚ ÏƒÏ„Î¿ Native Process Î”ÎµÎ½ ÎµÎ¯Î½Î±Î¹ Î´Ï…Î½Î±Ï„Î® Î· Î±Ï€Î¿ÏƒÏ…Î¼Ï€Î¯ÎµÏƒÎ· (untar) Ï„Î¿Ï… Adobe AIR SDK";
			_resource.content["error_unsupported_operating_system"]="Î”ÎµÎ½ Ï…Ï€Î¿ÏƒÏ„Î·Ï�Î¯Î¶ÎµÏ„Î±Î¹ Ï„Î¿ Î»ÎµÎ¹Ï„Î¿Ï…Ï�Î³Î¹ÎºÏŒ ÏƒÏ�ÏƒÏ„Î·Î¼Î±";
			_resource.content["error_invalid_air_sdk_url_mac"]="Î†ÎºÏ…Ï�Î¿ Adobe AIR SDK URL Î³Î¹Î± Mac ÏƒÏ„Î¿ Î±Ï�Ï‡ÎµÎ¯Î¿ Ï�Ï…Î¸Î¼Î¯ÏƒÎµÏ‰Î½";
			_resource.content["error_invalid_sdk_url"]="Î‘ÎºÏ…Ï�Î¿ Apache Flex SDK URL ÏƒÏ„Î¿ Î±Ï�Ï‡ÎµÎ¯Î¿ Ï�Ï…Î¸Î¼Î¯ÏƒÎµÏ‰Î½.";
			_resource.content["error_unable_to_download_flex_sdk"]="Î”ÎµÎ½ ÎµÎ¯Î½Î±Î¹ Î´Ï…Î½Î±Ï„Î® Î· Î»Î®ÏˆÎ· Ï„Î¿Ï… Apache Flex SDK";
			_resource.content["error_native_process_not_supported"]="Native Process Î´ÎµÎ½ Ï…Ï€Î¿ÏƒÏ„Î·Ï�Î¯Î¶ÎµÏ„Î±Î¹.  Î”ÎµÎ½ ÎµÎ¯Î½Î±Î¹ Î´Ï…Î½Î±Ï„Î® Î· Î±Ï€Î¿ÏƒÏ…Î¼Ï€Î¯ÎµÏƒÎ·(untar)Ï„Î¿Ï… Adobe AIR SDK";
			_resource.content["error_invalid_air_sdk_url_windows"]="Î†ÎºÏ…Ï�Î¿ Adobe AIR SDK URL Î³Î¹Î± Windows ÏƒÏ„Î¿ Î±Ï�Ï‡ÎµÎ¯Î¿ Ï�Ï…Î¸Î¼Î¯ÏƒÎµÏ‰Î½";
			_resource.content["error_invalid_flash_player_swc_url"]="Î†ÎºÏ…Ï�Î¿ Flash Player swc URL ÏƒÏ„Î¿ Î±Ï�Ï‡ÎµÎ¯Î¿ Ï�Ï…Î¸Î¼Î¯ÏƒÎµÏ‰Î½";
			_resource.content["error_config_xml_load"]="Ï€Ï�ÏŒÎµÎºÏ…ÏˆÎµ ÏƒÏ†Î¬Î»Î¼Î± ÏƒÏ„Î·Î½ Ï€Ï�Î¿ÏƒÏ€Î¬Î¸ÎµÎ¹Î± Ï†ÏŒÏ�Ï„Ï‰ÏƒÎ·Ï‚ Ï„Î¿Ï… Î±Ï�Ï‡ÎµÎ¯Î¿Ï… Ï�Ï…Î¸Î¼Î¯ÏƒÎµÏ‰Î½ XML: ";
			_resource.content["error_unable_to_delete_temp_directory"]="Î”ÎµÎ½ ÎµÎ¯Î½Î±Î¹ Î´Ï…Î½Î±Ï„Î® Î· ÎµÎºÎºÎ±Î¸Î¬Ï�Î¹ÏƒÎ· Ï„Ï‰Î½ Ï€Ï�Î¿ÏƒÏ‰Ï�Î¹Î½ÏŽÎ½ ÎºÎ±Ï„Î±Î»ÏŒÎ³Ï‰Î½ ÎµÎ³ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·Ï‚";
			_resource.content["error_unable_to_copy_file"]="Î”ÎµÎ½ ÎµÎ¯Î½Î±Î¹ Î´Ï…Î½Î±Ï„Î® Î· Î±Î½Ï„Î¹Î³Ï�Î±Ï†Î® Ï„Î¿Ï… Î±Ï�Ï‡ÎµÎ¯Î¿Ï… ";
			_resource.content["error_unable_to_download_air_sdk"]="Î”ÎµÎ½ ÎµÎ¯Î½Î±Î¹ Î´Ï…Î½Î±Ï„Î® Î· Î»Î®ÏˆÎ· Ï„Î¿Ï… Adobe AIR Runtime Kit";
			_resource.content["error_unable_to_create_temp_directory"]="Unable to create temporary directory";
			_resource.content["error_invalid_flex_sdk_directory"]="Invalid Flex SDK directory selected";
			_resource.content["error_unable_to_install_config_files"]="Unable to install configuration files";

			
			_resource.content["apache_flex_url"]="http://incubator.apache.org/flex/";
			_resource.content["config_url"]="ApacheFlexConfig.xml";
			
			_resource.content["step_download_flashplayer_swc"]="Î›Î®ÏˆÎ· Flash Player swc";
			_resource.content["step_download_flex_sdk"]="Î›Î®ÏˆÎ· Apache Flex SDK";
			_resource.content["step_download_air_runtime_kit"]="Î›Î®ÏˆÎ· Adobe AIR Runtime Kit";
			_resource.content["step_install_config_files"]="Î•Î³ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ· Î±Ï�Ï‡ÎµÎ¯Ï‰Î½ Ï�Ï…Î¸Î¼Î¯ÏƒÎµÏ‰Î½ Ï„Î¿Ï… Framework";
			_resource.content["step_create_directories"]="Î”Î·Î¼Î¹Î¿Ï…Ï�Î³Î¯Î± ÎšÎ±Ï„Î±Î»ÏŒÎ³Ï‰Î½";
			_resource.content["step_unzip_flex_sdk"]="Î‘Î±Ï€Î¿ÏƒÏ…Î¼Ï€Î¯ÎµÏƒÎ· Apache Flex SDK";
			_resource.content["step_unzip_air_runtime_kit"]="Î‘Î±Ï€Î¿ÏƒÏ…Î¼Ï€Î¯ÎµÏƒÎ· Adobe AIR Runtime Kit";
			
			_resourceManager.addResourceBundle(_resource);
			_resourceManager.update();
			
		}
		
		protected function installResourcers_nl_NL():void
		{
			var _resourceManager:IResourceManager = ResourceManager.getInstance();
			var _resource:ResourceBundle = new ResourceBundle("nl_NL", "messagestrings");

			_resource.content["browse_btn_label"]="Bladeren...";
			_resource.content["install_log_btn_label"]="Installatie Log";
			_resource.content["install_btn_label"]="Installeren";
			_resource.content["close_btn_label"]="Sluiten";
			_resource.content["select_path_prompt"]="Geef Flex SDK pad in of blader naar het pad";
			
			_resource.content["info_installation_complete"]="Installatie gereed.";
			_resource.content["info_creating_temp_dir"]="Maakt tijdelijke map aan";
			_resource.content["info_installing_config_files"]="Framework configuratie bestanden voor gebruik met IDE worden geinstalleerd";
			_resource.content["info_dowloading_air_runtime_kit_mac"]="Adobe AIR Runtime Kit voor Mac wordt gedownload van: ";
			_resource.content["info_dowloading_flex_sdk"]="Apache Flex SDK wordt gedownload van: ";
			_resource.content["info_creating_flex_home"]="Maakt flex home aan";
			_resource.content["info_finished_untaring"]="Klaar met uitpakken:";
			_resource.content["info_dowloading_air_runtime_kit_windows"]="Adobe AIR Runtime Kit voor Windows wordt gedownload van: ";
			_resource.content["info_downloaded"]="Gedownload ";
			_resource.content["info_enter_valid_flex_sdk_path"]="Geef een geldig Flex SDK pad in";
			_resource.content["info_finished_unzipping"]="Klaar met uitpakken: ";
			_resource.content["info_select_directory"]="Kies een map";
			_resource.content["info_unzipping"]="Uitpakken: ";
			_resource.content["info_app_invoked"]="Opgestart in command line modus met de volgende argumenten: ";
			_resource.content["info_installing_playerglobal_swc"]="Adobe Flash Player playerglobal.swc wordt geinstalleerd van:";
			_resource.content["info_invoked_gui_mode"]="Opgestart in visuele modus";
			
			_resource.content["error_unable_to_copy_file"]="Kan bestand niet kopieeren ";
			_resource.content["error_config_xml_load"]="Fout tijdens het laden van het XML configuratie bestand: ";
			_resource.content["error_native_process_error"]="Native Process fout kan Adobe AIR SDK niet uitpakken";
			_resource.content["error_unsupported_operating_system"]="Besturingsysteem is niet ondersteund";
			_resource.content["error_invalid_air_sdk_url_mac"]="Adobe AIR SDK URL voor Mac is ongeldig in configuratie bestand";
			_resource.content["error_invalid_sdk_url"]="Apache Flex SDK URL ongeldig in configuratie bestand";
			_resource.content["error_native_process_not_supported"]="Native Process niet ondersteund.  Kan Adobe AIR SDK niet uitpakken";
			_resource.content["error_invalid_air_sdk_url_windows"]="Adobe AIR SDK URL voor Windows is ongeldig in configuratie bestand";
			_resource.content["error_invalid_flash_player_swc_url"]="Flash Player swc URL is ongeldig in configuratie bestand";
			_resource.content["error_unable_to_download_flex_sdk"]="Downloaden Apache Flex SDK mislukt";
			_resource.content["error_unable_to_download_air_sdk"]="Downloaden Adobe AIR Runtime Kit mislukt";
			_resource.content["error_unable_to_download_flash_player_swc"]="Downloaden Flash Player swc mislukt";
			_resource.content["info_abort_installation"]="Installatie wordt afgebroken";
			_resource.content["error_unable_to_delete_temp_directory"]="Opruimen van tijdelijke installatie bestanden mislukt";
			_resource.content["error_unable_to_create_temp_directory"]="Unable to create temporary directory";
			_resource.content["error_invalid_flex_sdk_directory"]="Invalid Flex SDK directory selected";
			_resource.content["error_unable_to_install_config_files"]="Unable to install configuration files";

			
			_resource.content["config_url"]="ApacheFlexConfig.xml";
			_resource.content["apache_flex_url"]="http://incubator.apache.org/flex/";
			
			_resource.content["step_download_flex_sdk"]="Apache Flex SDK Downloaden";
			_resource.content["step_unzip_flex_sdk"]="Apache Flex SDK uitpakken";
			_resource.content["step_download_air_runtime_kit"]="Adobe AIR Runtime Kit Downloaden";
			_resource.content["step_unzip_air_runtime_kit"]="Adobe AIR Runtime Kit Uitpakken";
			_resource.content["step_download_flashplayer_swc"]="Flash Player swc Downloaden";
			_resource.content["step_install_config_files"]="Framework Configuratie Bestanden Installeren";
			_resource.content["step_create_directories"]="Mappen aanmaken";
			
			_resourceManager.addResourceBundle(_resource);
			_resourceManager.update();

		}
		protected function installResourcers_en_AU():void
		{
			var _resourceManager:IResourceManager = ResourceManager.getInstance();
			var _resource:ResourceBundle = new ResourceBundle("en_AU", "messagestrings");
			
			_resource.content["browse_btn_label"]="BROWSE";
			_resource.content["install_log_btn_label"]="INSTALL LOG";
			_resource.content["install_btn_label"]="INSTALL";
			_resource.content["close_btn_label"]="CLOSE";
			_resource.content["select_path_prompt"]="Enter Flex SDK path or browse to select a path";
			
			_resource.content["info_dowloading_air_runtime_kit_mac"]="Downloading Adobe AIR Runtime Kit for Mac from: ";
			_resource.content["info_finished_untaring"]="Finished untaring: ";
			_resource.content["info_dowloading_air_runtime_kit_windows"]="Downloading Adobe AIR Runtime Kit for Windows from: ";
			_resource.content["info_invoked_gui_mode"]="invoked in GUI mode";
			_resource.content["info_enter_valid_flex_sdk_path"]="Please enter valid directory path for the Flex SDK";
			_resource.content["info_select_directory"]="Select a directory";
			_resource.content["info_app_invoked"]="Invoked in command line mode with the following arguments: ";
			_resource.content["info_downloaded"]="Download complete ";
			_resource.content["info_abort_installation"]="Aborting Installation";
			_resource.content["info_unzipping"]="Unzipping: ";
			_resource.content["info_installing_playerglobal_swc"]="Installing Adobe Flash Player playerglobal.swc from: ";
			_resource.content["info_installing_config_files"]="Installing frameworks configuration files configured for use with an IDE";
			_resource.content["info_installation_complete"]="Installation complete.";
			_resource.content["info_creating_temp_dir"]="Creating temporary directory";
			_resource.content["info_creating_flex_home"]="Creating Apache Flex home";
			_resource.content["info_finished_unzipping"]="Finished unzipping: ";
			_resource.content["info_dowloading_flex_sdk"]="Downloading Apache Flex SDK from: ";

			_resource.content["error_unable_to_copy_file"]="Unable to copy file ";
			_resource.content["error_config_xml_load"]="Error while trying to load XML configuration file: ";
			_resource.content["error_unable_to_download_flash_player_swc"]="Unable to download Flash Player swc";
			_resource.content["error_unable_to_delete_temp_directory"]="Unable to clean up temporary installation directories";
			_resource.content["error_unable_to_download_air_sdk"]="Unable to download Adobe AIR Runtime Kit";
			_resource.content["error_invalid_flash_player_swc_url"]="Flash Player swc URL invalid in configuration file";
			_resource.content["error_unsupported_operating_system"]="Unsupported operating system";
			_resource.content["error_invalid_sdk_url"]="Apache Flex SDK URL invalid in configuration file";
			_resource.content["error_invalid_air_sdk_url_mac"]="Adobe AIR SDK URL for Mac invalid in configuration file";
			_resource.content["error_native_process_error"]="Native Process error unable to untar Adobe AIR SDK";
			_resource.content["error_invalid_air_sdk_url_windows"]="Adobe AIR SDK URL for Windows invalid in configuration file";
			_resource.content["error_unable_to_download_flex_sdk"]="Unable to download Apache Flex SDK";
			_resource.content["error_native_process_not_supported"]="Native Process not supported.  Unable to untar Adobe AIR SDK";
			_resource.content["error_unable_to_create_temp_directory"]="Unable to create temporary directory";
			_resource.content["error_invalid_flex_sdk_directory"]="Invalid Flex SDK directory selected";
			_resource.content["error_unable_to_install_config_files"]="Unable to install configuration files";

			_resource.content["config_url"]="ApacheFlexConfig.xml";
			_resource.content["apache_flex_url"]="http://incubator.apache.org/flex/";
			
			_resource.content["step_install_config_files"]="Install Framework Configuration Files";
			_resource.content["step_unzip_flex_sdk"]="Unzip Apache Flex SDK";
			_resource.content["step_unzip_air_runtime_kit"]="Unzip Adobe AIR Runtime Kit";
			_resource.content["step_download_flashplayer_swc"]="Download Flash Player swc";
			_resource.content["step_download_flex_sdk"]="Download Apache Flex SDK";
			_resource.content["step_download_air_runtime_kit"]="Download Adobe AIR Runtime Kit";
			_resource.content["step_create_directories"]="Create Directories";
			
			_resourceManager.addResourceBundle(_resource);
			_resourceManager.update();
		}
		
		protected function installResourcers_en_GB():void
		{
			var _resourceManager:IResourceManager = ResourceManager.getInstance();
			var _resource:ResourceBundle = new ResourceBundle("en_AU", "messagestrings");
			
			_resource.content["browse_btn_label"]="BROWSE";
			_resource.content["install_log_btn_label"]="INSTALL LOG";
			_resource.content["install_btn_label"]="INSTALL";
			_resource.content["close_btn_label"]="CLOSE";
			_resource.content["select_path_prompt"]="Enter Flex SDK path or browse to select a path";
			
			_resource.content["info_dowloading_air_runtime_kit_mac"]="Downloading Adobe AIR Runtime Kit for Mac from: ";
			_resource.content["info_finished_untaring"]="Finished untaring: ";
			_resource.content["info_dowloading_air_runtime_kit_windows"]="Downloading Adobe AIR Runtime Kit for Windows from: ";
			_resource.content["info_invoked_gui_mode"]="invoked in GUI mode";
			_resource.content["info_enter_valid_flex_sdk_path"]="Please enter valid directory path for the Flex SDK";
			_resource.content["info_select_directory"]="Select a directory";
			_resource.content["info_app_invoked"]="Invoked in command line mode with the following arguments: ";
			_resource.content["info_downloaded"]="Download complete ";
			_resource.content["info_abort_installation"]="Aborting Installation";
			_resource.content["info_unzipping"]="Unzipping: ";
			_resource.content["info_installing_playerglobal_swc"]="Installing Adobe Flash Player playerglobal.swc from: ";
			_resource.content["info_installing_config_files"]="Installing frameworks configuration files configured for use with an IDE";
			_resource.content["info_installation_complete"]="Installation complete.";
			_resource.content["info_creating_temp_dir"]="Creating temporary directory";
			_resource.content["info_creating_flex_home"]="Creating Apache Flex home";
			_resource.content["info_finished_unzipping"]="Finished unzipping: ";
			_resource.content["info_dowloading_flex_sdk"]="Downloading Apache Flex SDK from: ";

			_resource.content["error_unable_to_copy_file"]="Unable to copy file ";
			_resource.content["error_config_xml_load"]="Error while trying to load XML configuration file: ";
			_resource.content["step_unzip_flex_sdk"]="Unzip Apache Flex SDK";
			_resource.content["error_unable_to_download_flash_player_swc"]="Unable to download Flash Player swc";
			_resource.content["error_unable_to_delete_temp_directory"]="Unable to clean up temporary installation directories";
			_resource.content["error_unable_to_download_air_sdk"]="Unable to download Adobe AIR Runtime Kit";
			_resource.content["error_invalid_flash_player_swc_url"]="Flash Player swc URL invalid in configuration file";
			_resource.content["error_unsupported_operating_system"]="Unsupported operating system";
			_resource.content["error_invalid_sdk_url"]="Apache Flex SDK URL invalid in configuration file";
			_resource.content["error_invalid_air_sdk_url_mac"]="Adobe AIR SDK URL for Mac invalid in configuration file";
			_resource.content["error_native_process_error"]="Native Process error unable to untar Adobe AIR SDK";
			_resource.content["error_invalid_air_sdk_url_windows"]="Adobe AIR SDK URL for Windows invalid in configuration file";
			_resource.content["error_unable_to_download_flex_sdk"]="Unable to download Apache Flex SDK";
			_resource.content["error_native_process_not_supported"]="Native Process not supported.  Unable to untar Adobe AIR SDK";
			_resource.content["error_unable_to_create_temp_directory"]="Unable to create temporary directory";
			_resource.content["error_invalid_flex_sdk_directory"]="Invalid Flex SDK directory selected";
			_resource.content["error_unable_to_install_config_files"]="Unable to install configuration files";

			_resource.content["config_url"]="ApacheFlexConfig.xml";
			_resource.content["apache_flex_url"]="http://incubator.apache.org/flex/";
			
			_resource.content["step_unzip_air_runtime_kit"]="Unzip Adobe AIR Runtime Kit";
			_resource.content["step_install_config_files"]="Install Framework Configuration Files";
			_resource.content["step_download_flashplayer_swc"]="Download Flash Player swc";
			_resource.content["step_download_flex_sdk"]="Download Apache Flex SDK";
			_resource.content["step_download_air_runtime_kit"]="Download Adobe AIR Runtime Kit";
			_resource.content["step_create_directories"]="Create Directories";

			_resourceManager.addResourceBundle(_resource);
			_resourceManager.update();
		}

	}
}

