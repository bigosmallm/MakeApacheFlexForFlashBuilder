package org.apache.flex.packageflexsdk.resource
{
	import flash.utils.getQualifiedClassName;
	
	import mx.resources.ResourceManager;
	
	[ResourceBundle("messagestrings")]
	public final class ViewResourceConstants
	{
		private static var _instance:ViewResourceConstants;
		//Labels
		private var _INSTALL_BTN_LABEL:String;
		private var _SELECT_PATH_PROMPT:String;
		private var _BROWSE_BTN_LABEL:String;
		private var _INSTALL_LOG_BTN_LABEL:String;
		private var _CLOSE_BTN_LABEL:String;

		//Log messages
		private var _ERROR_CONFIG_XML_LOAD:String;
		private var _ERROR_INVALID_SDK_URL:String;
		private var _ERROR_INVALID_AIR_SDK_URL_WINDOWS:String;
		private var _ERROR_INVALID_AIR_SDK_URL_MAC:String;
		private var _ERROR_INVALID_FLASH_PLAYER_SWC_URL:String;
		private var _ERROR_UNSUPPORTED_OPERATING_SYSTEM:String;
		private var _INFO_APP_INVOKED:String;
		private var _INFO_ENTER_VALID_FLEX_SDK_PATH:String;
		private var _INFO_INVOKED_GUI_MODE:String;
		private var _INFO_SELECT_DIRECTORY:String;
		private var _INFO_CREATING_FLEX_HOME:String;
		private var _INFO_CREATING_TEMP_DIR:String;
		private var _INFO_DOWNLOADING_FLEX_SDK:String;
		private var _INFO_UNZIPPING:String;
		private var _INFO_FINISHED_UNZIPPING:String;
		private var _INFO_DOWLOADING_AIR_RUNTIME_KIT_WINDOWS:String;
		private var _INFO_DOWLOADING_AIR_RUNTIME_KIT_MAC:String;
		private var _ERROR_NATIVE_PROCESS_NOT_SUPPORTED:String;
		private var _ERROR_NATIVE_PROCESS_ERROR:String;
		private var _INFO_FINISHED_UNTARING:String;
		private var _INFO_INSTALLING_PLAYERGLOBAL_SWC:String;
		private var _INFO_INSTALLING_CONFIG_FILES:String;
		private var _INFO_INSTALLATION_COMPLETE:String;
		private var _ERROR_UNABLE_TO_COPY_FILE:String;
		private var _INFO_DOWNLOADED:String;
		
		//URLs
		private var _APACHE_FLEX_URL:String;
		private var _CONFIG_URL:String;
		
		
		public function ViewResourceConstants(enforcer:SingletonEnforcer)
		{
			if ( enforcer != null && !(enforcer is SingletonEnforcer) )
			{
				throw new Error( "Invalid Singleton access. Please use ViewResourceManager.getInstance() instead." );
			}
			populateStrings();
		}
		
		public static function getInstance():ViewResourceConstants
		{
			if(_instance == null){
				_instance = new ViewResourceConstants(new SingletonEnforcer());
			}
			return _instance;
		}
		
		private function populateStrings():void
		{
			_INSTALL_BTN_LABEL = ResourceManager.getInstance().getString("messagestrings","install_btn_label");
			_SELECT_PATH_PROMPT = ResourceManager.getInstance().getString("messagestrings","select_path_prompt");
			_BROWSE_BTN_LABEL = ResourceManager.getInstance().getString("messagestrings","browse_btn_label");
			_INSTALL_LOG_BTN_LABEL = ResourceManager.getInstance().getString("messagestrings","install_log_btn_label");
			_CLOSE_BTN_LABEL = ResourceManager.getInstance().getString("messagestrings","close_btn_label");
			
			_APACHE_FLEX_URL = ResourceManager.getInstance().getString("messagestrings","apache_flex_url");
			_CONFIG_URL = ResourceManager.getInstance().getString("messagestrings","config_url");

			_ERROR_CONFIG_XML_LOAD = ResourceManager.getInstance().getString("messagestrings","error_config_xml_load");
			_ERROR_INVALID_SDK_URL = ResourceManager.getInstance().getString("messagestrings","error_invalid_sdk_url");
			_ERROR_INVALID_AIR_SDK_URL_WINDOWS = ResourceManager.getInstance().getString("messagestrings","error_invalid_air_sdk_url_windows");
			_ERROR_INVALID_AIR_SDK_URL_MAC = ResourceManager.getInstance().getString("messagestrings","error_invalid_air_sdk_url_mac");
			_ERROR_INVALID_FLASH_PLAYER_SWC_URL = ResourceManager.getInstance().getString("messagestrings","error_invalid_flash_player_swc_url"); 
			_INFO_APP_INVOKED = ResourceManager.getInstance().getString("messagestrings","info_app_invoked");
			_ERROR_UNSUPPORTED_OPERATING_SYSTEM = ResourceManager.getInstance().getString("messagestrings","error_unsupported_operating_system");
			_INFO_ENTER_VALID_FLEX_SDK_PATH = ResourceManager.getInstance().getString("messagestrings","info_enter_valid_flex_sdk_path");
			_INFO_INVOKED_GUI_MODE = ResourceManager.getInstance().getString("messagestrings","info_invoked_gui_mode");
			_INFO_SELECT_DIRECTORY = ResourceManager.getInstance().getString("messagestrings","info_select_directory");
			_INFO_CREATING_FLEX_HOME = ResourceManager.getInstance().getString("messagestrings","info_creating_flex_home");
			_INFO_CREATING_TEMP_DIR = ResourceManager.getInstance().getString("messagestrings","info_creating_temp_dir");
			_INFO_DOWNLOADING_FLEX_SDK = ResourceManager.getInstance().getString("messagestrings","info_dowloading_flex_sdk");
			_INFO_UNZIPPING = ResourceManager.getInstance().getString("messagestrings","info_unzipping");
			_INFO_FINISHED_UNZIPPING = ResourceManager.getInstance().getString("messagestrings","info_unzipping");
			_INFO_DOWLOADING_AIR_RUNTIME_KIT_WINDOWS = ResourceManager.getInstance().getString("messagestrings","info_dowloading_air_runtime_kit_windows");
			_INFO_DOWLOADING_AIR_RUNTIME_KIT_MAC = ResourceManager.getInstance().getString("messagestrings","info_dowloading_air_runtime_kit_mac");
			_ERROR_NATIVE_PROCESS_NOT_SUPPORTED = ResourceManager.getInstance().getString("messagestrings","error_native_process_not_supported");
			_ERROR_NATIVE_PROCESS_ERROR = ResourceManager.getInstance().getString("messagestrings","error_native_process_error");
			_INFO_FINISHED_UNTARING = ResourceManager.getInstance().getString("messagestrings","info_finished_untaring");
			_INFO_INSTALLING_PLAYERGLOBAL_SWC = ResourceManager.getInstance().getString("messagestrings","info_installing_playerglobal_swc");
			_INFO_INSTALLING_CONFIG_FILES = ResourceManager.getInstance().getString("messagestrings","info_installing_config_files");
			_INFO_INSTALLATION_COMPLETE = ResourceManager.getInstance().getString("messagestrings","info_installation_complete");
			_ERROR_UNABLE_TO_COPY_FILE = ResourceManager.getInstance().getString("messagestrings","error_unable_to_copy_file");
			_INFO_DOWNLOADED = ResourceManager.getInstance().getString("messagestrings","info_downloaded");
		}
		public function get INFO_DOWNLOADED():String
		{
			return _INFO_DOWNLOADED;
		}

		public function get ERROR_UNABLE_TO_COPY_FILE():String
		{
			return _ERROR_UNABLE_TO_COPY_FILE;
		}

		public function get INFO_INSTALLATION_COMPLETE():String
		{
			return _INFO_INSTALLATION_COMPLETE;
		}

		public function get INFO_INSTALLING_CONFIG_FILES():String
		{
			return _INFO_INSTALLING_CONFIG_FILES;
		}

		public function get INFO_INSTALLING_PLAYERGLOBAL_SWC():String
		{
			return _INFO_INSTALLING_PLAYERGLOBAL_SWC;
		}

		public function get INFO_FINISHED_UNTARING():String
		{
			return _INFO_FINISHED_UNTARING;
		}

		public function get ERROR_NATIVE_PROCESS_ERROR():String
		{
			return _ERROR_NATIVE_PROCESS_ERROR;
		}

		public function get ERROR_NATIVE_PROCESS_NOT_SUPPORTED():String
		{
			return _ERROR_NATIVE_PROCESS_NOT_SUPPORTED;
		}

		public function get INFO_DOWLOADING_AIR_RUNTIME_KIT_MAC():String
		{
			return _INFO_DOWLOADING_AIR_RUNTIME_KIT_MAC;
		}

		public function get INFO_DOWLOADING_AIR_RUNTIME_KIT_WINDOWS():String
		{
			return _INFO_DOWLOADING_AIR_RUNTIME_KIT_WINDOWS;
		}

		public function get INFO_FINISHED_UNZIPPING():String
		{
			return _INFO_FINISHED_UNZIPPING;
		}

		public function get INFO_UNZIPPING():String
		{
			return _INFO_UNZIPPING;
		}

		public function get INFO_DOWNLOADING_FLEX_SDK():String
		{
			return _INFO_DOWNLOADING_FLEX_SDK;
		}

		public function get INFO_CREATING_TEMP_DIR():String
		{
			return _INFO_CREATING_TEMP_DIR;
		}

		public function get INFO_CREATING_FLEX_HOME():String
		{
			return _INFO_CREATING_FLEX_HOME;
		}

		public function get INFO_SELECT_DIRECTORY():String
		{
			return _INFO_SELECT_DIRECTORY;
		}

		public function get INFO_INVOKED_GUI_MODE():String
		{
			return _INFO_INVOKED_GUI_MODE;
		}

		public function get INFO_ENTER_VALID_FLEX_SDK_PATH():String
		{
			return _INFO_ENTER_VALID_FLEX_SDK_PATH;
		}

		public function get ERROR_UNSUPPORTED_OPERATING_SYSTEM():String
		{
			return _ERROR_UNSUPPORTED_OPERATING_SYSTEM;
		}

		public function get ERROR_INVALID_AIR_SDK_URL_WINDOWS():String
		{
			return _ERROR_INVALID_AIR_SDK_URL_WINDOWS;
		}

		public function get CONFIG_URL():String
		{
			return _CONFIG_URL;
		}

		public function get APACHE_FLEX_URL():String
		{
			return _APACHE_FLEX_URL;
		}

		public function get INFO_APP_INVOKED():String
		{
			return _INFO_APP_INVOKED;
		}

		public function get ERROR_INVALID_FLASH_PLAYER_SWC_URL():String
		{
			return _ERROR_INVALID_FLASH_PLAYER_SWC_URL;
		}

		public function get ERROR_INVALID_AIR_SDK_URL_MAC():String
		{
			return _ERROR_INVALID_AIR_SDK_URL_MAC;
		}

		public function get ERROR_INVALID_SDK_URL():String
		{
			return _ERROR_INVALID_SDK_URL;
		}

		public function get ERROR_CONFIG_XML_LOAD():String
		{
			return _ERROR_CONFIG_XML_LOAD;
		}

		public function get CLOSE_BTN_LABEL():String
		{
			return _CLOSE_BTN_LABEL;
		}

		public function get INSTALL_LOG_BTN_LABEL():String
		{
			return _INSTALL_LOG_BTN_LABEL;
		}

		public function get BROWSE_BTN_LABEL():String
		{
			return _BROWSE_BTN_LABEL;
		}

		public function get SELECT_PATH_PROMPT():String
		{
			return _SELECT_PATH_PROMPT;
		}

		public function get INSTALL_BTN_LABEL():String
		{
			return _INSTALL_BTN_LABEL;
		}
		
	}
}

class SingletonEnforcer{}