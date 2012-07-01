package org.apache.flex.packageflexsdk.resource
{
	import flash.events.Event;
	import flash.utils.getQualifiedClassName;
	
	import mx.resources.IResourceManager;
	import mx.resources.ResourceManager;
	
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
		private var _ERROR_UNABLE_TO_DOWNLOAD_FLEX_SDK:String;
		private var _ERROR_UNABLE_TO_DOWNLOAD_AIR_SDK:String;
		private var _ERROR_UNABLE_TO_DOWNLOAD_FLASH_PLAYER_SWC:String;
		private var _INFO_ABORT_INSTALLATION:String;
		private var _ERROR_UNABLE_TO_DELETE_TEMP_DIRECTORY:String;
		private var _ERROR_UNABLE_TO_CREATE_TEMP_DIRECTORY:String;
		private var _ERROR_INVALID_FLEX_SDK_DIRECTORY:String;
		private var _ERROR_UNABLE_TO_INSTALL_CONFIG_FILES:String;
		
		//URLs
		private var _APACHE_FLEX_URL:String;
		private var _CONFIG_URL:String;
		
		//STEPS
		private var _STEP_CREATE_DIRECTORIES:String;
		private var _STEP_DOWNLOAD_FLEX_SDK:String;
		private var _STEP_UNZIP_FLEX_SDK:String;
		private var _STEP_DOWNLOAD_AIR_RUNTIME_KIT:String;
		private var _STEP_UNZIP_AIR_RUNTIME_KIT:String;
		private var _STEP_DOWNLOAD_FLASHPLAYER_SWC:String;
		private var _STEP_INSTALL_CONFIG_FILES:String;
		
		private var _iResourceManager:IResourceManager;
		
		public function ViewResourceConstants(enforcer:SingletonEnforcer)
		{
			if (enforcer != null && !(enforcer is SingletonEnforcer))
			{
				throw new Error( "Invalid Singleton access. Please use ViewResourceManager.getInstance() instead." );
			}
			
			_iResourceManager = ResourceManager.getInstance();
			_iResourceManager.addEventListener(Event.CHANGE , resourceLocale_Handler);
			populateStrings();
		}
		
		public static function getInstance():ViewResourceConstants
		{
			if (_instance == null)
			{
				_instance = new ViewResourceConstants(new SingletonEnforcer());	
			}
			
			return _instance;
		}
		
		protected function resourceLocale_Handler(event:Event):void
		{
			populateStrings();
		}
		
		private function populateStrings():void
		{
			_INSTALL_BTN_LABEL = _iResourceManager.getString("messagestrings","install_btn_label");
			_SELECT_PATH_PROMPT = _iResourceManager.getString("messagestrings","select_path_prompt");
			_BROWSE_BTN_LABEL = _iResourceManager.getString("messagestrings","browse_btn_label");
			_INSTALL_LOG_BTN_LABEL = _iResourceManager.getString("messagestrings","install_log_btn_label");
			_CLOSE_BTN_LABEL = _iResourceManager.getString("messagestrings","close_btn_label");
			
			_APACHE_FLEX_URL = _iResourceManager.getString("messagestrings","apache_flex_url");
			_CONFIG_URL = _iResourceManager.getString("messagestrings","config_url");

			_ERROR_CONFIG_XML_LOAD = _iResourceManager.getString("messagestrings","error_config_xml_load");
			_ERROR_INVALID_SDK_URL = _iResourceManager.getString("messagestrings","error_invalid_sdk_url");
			_ERROR_INVALID_AIR_SDK_URL_WINDOWS = _iResourceManager.getString("messagestrings","error_invalid_air_sdk_url_windows");
			_ERROR_INVALID_AIR_SDK_URL_MAC = _iResourceManager.getString("messagestrings","error_invalid_air_sdk_url_mac");
			_ERROR_INVALID_FLASH_PLAYER_SWC_URL = _iResourceManager.getString("messagestrings","error_invalid_flash_player_swc_url"); 
			_INFO_APP_INVOKED = _iResourceManager.getString("messagestrings","info_app_invoked");
			_ERROR_UNSUPPORTED_OPERATING_SYSTEM = _iResourceManager.getString("messagestrings","error_unsupported_operating_system");
			_INFO_ENTER_VALID_FLEX_SDK_PATH = _iResourceManager.getString("messagestrings","info_enter_valid_flex_sdk_path");
			_INFO_INVOKED_GUI_MODE = _iResourceManager.getString("messagestrings","info_invoked_gui_mode");
			_INFO_SELECT_DIRECTORY = _iResourceManager.getString("messagestrings","info_select_directory");
			_INFO_CREATING_FLEX_HOME = _iResourceManager.getString("messagestrings","info_creating_flex_home");
			_INFO_CREATING_TEMP_DIR = _iResourceManager.getString("messagestrings","info_creating_temp_dir");
			_INFO_DOWNLOADING_FLEX_SDK = _iResourceManager.getString("messagestrings","info_dowloading_flex_sdk");
			_INFO_UNZIPPING = _iResourceManager.getString("messagestrings","info_unzipping");
			_INFO_FINISHED_UNZIPPING = _iResourceManager.getString("messagestrings","info_unzipping");
			_INFO_DOWLOADING_AIR_RUNTIME_KIT_WINDOWS = _iResourceManager.getString("messagestrings","info_dowloading_air_runtime_kit_windows");
			_INFO_DOWLOADING_AIR_RUNTIME_KIT_MAC = _iResourceManager.getString("messagestrings","info_dowloading_air_runtime_kit_mac");
			_ERROR_NATIVE_PROCESS_NOT_SUPPORTED = _iResourceManager.getString("messagestrings","error_native_process_not_supported");
			_ERROR_NATIVE_PROCESS_ERROR = _iResourceManager.getString("messagestrings","error_native_process_error");
			_INFO_FINISHED_UNTARING = _iResourceManager.getString("messagestrings","info_finished_untaring");
			_INFO_INSTALLING_PLAYERGLOBAL_SWC = _iResourceManager.getString("messagestrings","info_installing_playerglobal_swc");
			_INFO_INSTALLING_CONFIG_FILES = _iResourceManager.getString("messagestrings","info_installing_config_files");
			_INFO_INSTALLATION_COMPLETE = _iResourceManager.getString("messagestrings","info_installation_complete");
			_ERROR_UNABLE_TO_COPY_FILE = _iResourceManager.getString("messagestrings","error_unable_to_copy_file");
			_INFO_DOWNLOADED = _iResourceManager.getString("messagestrings","info_downloaded");
			_ERROR_UNABLE_TO_DOWNLOAD_FLEX_SDK = _iResourceManager.getString("messagestrings","error_unable_to_download_flex_sdk");
			_ERROR_UNABLE_TO_DOWNLOAD_AIR_SDK = _iResourceManager.getString("messagestrings","error_unable_to_download_air_sdk");
			_ERROR_UNABLE_TO_DOWNLOAD_FLASH_PLAYER_SWC = _iResourceManager.getString("messagestrings","error_unable_to_download_flash_player_swc");
			_INFO_ABORT_INSTALLATION = _iResourceManager.getString("messagestrings","info_abort_installation");
			_ERROR_UNABLE_TO_DELETE_TEMP_DIRECTORY = _iResourceManager.getString("messagestrings","error_unable_to_delete_temp_directory");
			_ERROR_UNABLE_TO_CREATE_TEMP_DIRECTORY = _iResourceManager.getString("messagestrings","error_unable_to_create_temp_directory");
			_ERROR_INVALID_FLEX_SDK_DIRECTORY = _iResourceManager.getString("messagestrings","error_invalid_flex_sdk_directory");
			_ERROR_UNABLE_TO_INSTALL_CONFIG_FILES = _iResourceManager.getString("messagestrings","error_unable_to_install_config_files");
			
			_STEP_CREATE_DIRECTORIES = _iResourceManager.getString("messagestrings","step_create_directories");
			_STEP_DOWNLOAD_FLEX_SDK = _iResourceManager.getString("messagestrings","step_download_flex_sdk");
			_STEP_UNZIP_FLEX_SDK = _iResourceManager.getString("messagestrings","step_unzip_flex_sdk");
			_STEP_DOWNLOAD_AIR_RUNTIME_KIT = _iResourceManager.getString("messagestrings","step_download_air_runtime_kit");
			_STEP_UNZIP_AIR_RUNTIME_KIT = _iResourceManager.getString("messagestrings","step_unzip_air_runtime_kit");
			_STEP_DOWNLOAD_FLASHPLAYER_SWC = _iResourceManager.getString("messagestrings","step_download_flashplayer_swc");
			_STEP_INSTALL_CONFIG_FILES = _iResourceManager.getString("messagestrings","step_install_config_files");
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

		public function get STEP_CREATE_DIRECTORIES():String
		{
			return _STEP_CREATE_DIRECTORIES;
		}

		public function get STEP_DOWNLOAD_FLEX_SDK():String
		{
			return _STEP_DOWNLOAD_FLEX_SDK;
		}

		public function get STEP_UNZIP_FLEX_SDK():String
		{
			return _STEP_UNZIP_FLEX_SDK;
		}

		public function get STEP_DOWNLOAD_AIR_RUNTIME_KIT():String
		{
			return _STEP_DOWNLOAD_AIR_RUNTIME_KIT;
		}

		public function get STEP_UNZIP_AIR_RUNTIME_KIT():String
		{
			return _STEP_UNZIP_AIR_RUNTIME_KIT;
		}

		public function get STEP_DOWNLOAD_FLASHPLAYER_SWC():String
		{
			return _STEP_DOWNLOAD_FLASHPLAYER_SWC;
		}

		public function get STEP_INSTALL_CONFIG_FILES():String
		{
			return _STEP_INSTALL_CONFIG_FILES;
		}

		public function get ERROR_UNABLE_TO_DOWNLOAD_FLEX_SDK():String
		{
			return _ERROR_UNABLE_TO_DOWNLOAD_FLEX_SDK;
		}

		public function get ERROR_UNABLE_TO_DOWNLOAD_AIR_SDK():String
		{
			return _ERROR_UNABLE_TO_DOWNLOAD_AIR_SDK;
		}

		public function get ERROR_UNABLE_TO_DOWNLOAD_FLASH_PLAYER_SWC():String
		{
			return _ERROR_UNABLE_TO_DOWNLOAD_FLASH_PLAYER_SWC;
		}

		public function get INFO_ABORT_INSTALLATION():String
		{
			return _INFO_ABORT_INSTALLATION;
		}

		public function get ERROR_UNABLE_TO_DELETE_TEMP_DIRECTORY():String
		{
			return _ERROR_UNABLE_TO_DELETE_TEMP_DIRECTORY;
		}

		public function get ERROR_UNABLE_TO_CREATE_TEMP_DIRECTORY():String
		{
			return _ERROR_UNABLE_TO_CREATE_TEMP_DIRECTORY;
		}

		public function get ERROR_INVALID_FLEX_SDK_DIRECTORY():String
		{
			return _ERROR_INVALID_FLEX_SDK_DIRECTORY;
		}

		public function get ERROR_UNABLE_TO_INSTALL_CONFIG_FILES():String
		{
			return _ERROR_UNABLE_TO_INSTALL_CONFIG_FILES;
		}	
	}
}

class SingletonEnforcer{}