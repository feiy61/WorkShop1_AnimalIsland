{
  "$GMWindowsOptions":"",
  "%Name":"Windows",
  "name":"Windows",

  // --- Core Window & Display ---
  "option_windows_display_name":"My Awesome Game Title", // More descriptive name
  "option_windows_executable_name":"${project_name}_${version}.exe", // Include version in filename
  "option_windows_start_fullscreen":false,
  "option_windows_allow_fullscreen_switching":true, // Changed to true for flexibility
  "option_windows_interpolate_pixels":false, // Often preferred for pixel art
  "option_windows_borderless":false,
  "option_windows_resize_window":true, // Changed to true
  "option_windows_lock_aspect_ratio": false, // New: Option to maintain aspect ratio on resize
  "option_windows_always_on_top": false, // New: Keep window above others
  "option_windows_display_cursor":true,
  "option_windows_scale":0, // 0 = Stretched, -1 = Keep aspect ratio
  "option_windows_sleep_margin":10, // Lower value (e.g., 1 or 2) might improve input latency but increase CPU
  "option_windows_vsync":true, // Changed to true (common default)
  "option_windows_target_refresh_rate": 0, // New: Target specific refresh rate (0 = display default)
  "option_windows_min_window_width": 640, // New: Minimum allowed window width
  "option_windows_min_window_height": 480, // New: Minimum allowed window height
  "option_windows_max_window_width": 0, // New: Maximum allowed window width (0 = no limit)
  "option_windows_max_window_height": 0, // New: Maximum allowed window height (0 = no limit)
  "option_windows_multi_monitor_support": "Primary", // New: How to handle multiple monitors ("Primary", "Select", "Span")

  // --- Graphics & Rendering ---
  "option_windows_texture_page":"2048x2048", // Consider 4096x4096 for higher-res assets
  "option_windows_antialiasing_level": 0, // New: MSAA level (0, 2, 4, 8)
  "option_windows_anisotropic_filtering": true, // New: Enable anisotropic filtering
  "option_windows_anisotropic_level": 4, // New: Level (2, 4, 8, 16)
  "option_windows_preferred_render_api": "Direct3D 11", // New: Specify rendering API ("Direct3D 11", "Direct3D 12", "OpenGL", "Vulkan")
  "option_windows_hdr_support": false, // New: Enable High Dynamic Range output if available
  "option_windows_allow_shader_fallback": true, // New: Allow falling back to simpler shaders if needed

  // --- Input ---
  "option_windows_enable_raw_input": true, // New: Use Raw Input API for mouse/keyboard (often better)
  "option_windows_enable_xinput": true, // New: Explicitly enable XInput for Xbox controllers
  "option_windows_xinput_slot_count": 4, // New: Number of XInput slots to check
  "option_windows_enable_directinput": false, // New: Enable DirectInput for older/other controllers
  "option_windows_controller_rumble_intensity": 1.0, // New: Global controller rumble scale (0.0 to 1.0)

  // --- Audio ---
  "option_windows_audio_device": "", // New: Specify preferred audio output device name (empty = default)
  "option_windows_audio_buffer_size": 2048, // New: Audio buffer size in samples
  "option_windows_audio_latency_hint": "Interactive", // New: ("Interactive", "Playback", "LowLatency")
  "option_windows_enable_spatial_audio": false, // New: Attempt to use Windows Spatial Audio

  // --- Steam Integration ---
  "option_windows_enable_steam":false,
  "option_windows_steam_appid": 0, // New: Your Steam App ID (if enable_steam is true)
  "option_windows_steam_disable_overlay": false, // New: Option to disable Steam Overlay
  "option_windows_steam_disable_networking": false, // New: Disable Steam networking features specifically
  "option_windows_steam_publish_stats_on_load": true, // New: Push stats/achievements to Steam on game start
  "option_windows_steam_use_alternative_launcher":false,

  // --- Installer (NSIS) ---
  "option_windows_copy_exe_to_dest":false, // Usually false when using an installer
  "option_windows_splash_screen":"${base_options_dir}/windows/splash/splash.png",
  "option_windows_use_splash":false,
  "option_windows_icon":"${base_options_dir}/windows/icons/icon.ico",
  "option_windows_installer_finished":"${base_options_dir}/windows/installer/finished.bmp",
  "option_windows_installer_header":"${base_options_dir}/windows/installer/header.bmp",
  "option_windows_license":"${base_options_dir}/windows/installer/license.txt",
  "option_windows_nsis_file":"${base_options_dir}/windows/installer/nsis_script.nsi",
  "option_windows_installer_require_admin": true, // New: Require administrator privileges to install
  "option_windows_installer_output_filename": "${project_name}_${version}_setup.exe", // New: Customize installer filename
  "option_windows_installer_allow_modify_path": true, // New: Allow user to change installation directory
  "option_windows_installer_create_desktop_shortcut": true, // New: Option to create desktop shortcut
  "option_windows_installer_create_start_menu_shortcut": true, // New: Option to create start menu shortcut
  "option_windows_installer_language_selection": true, // New: Include language selection in installer (if NSIS script supports it)

  // --- Metadata & Versioning ---
  "option_windows_version":"1.0.0.0", // Use semantic versioning (Major.Minor.Patch.Build)
  "option_windows_company_info":"My Awesome Studio Inc.", // Updated info
  "option_windows_product_info":"My Awesome Game", // Updated info
  "option_windows_copyright_info":"(c) 2025 My Awesome Studio Inc. All rights reserved.", // Updated info
  "option_windows_description_info":"An exciting new adventure game.", // Updated info

  // --- Saving & Filesystem ---
  "option_windows_save_location":0, // 0 = AppData Local, 1 = AppData Roaming, 2 = Program Directory (Not recommended), 3 = My Documents
  "option_windows_custom_save_path": "", // New: Specify a completely custom save path structure (use with caution)
  "option_windows_disable_sandbox":false, // Keep sandbox unless absolutely necessary

  // --- Debugging & Development ---
  "option_windows_enable_debug_overlay": false, // New: Include a built-in debug overlay (if supported by engine/extension)
  "option_windows_enable_logging": false, // New: Enable detailed logging to a file
  "option_windows_log_level": "Info", // New: Log detail level ("Debug", "Info", "Warning", "Error", "Critical")
  "option_windows_log_file_path": "${game_save_dir}/game_log.txt", // New: Path for the log file
  "option_windows_allow_command_line_args": true, // New: Allow passing arguments to the game exe
  "option_windows_enable_crash_reporting": false, // New: Enable automatic crash report generation/upload
  "option_windows_crash_report_url": "", // New: URL endpoint for crash report submission

  // --- Resource Management ---
  "option_windows_texture_compression": "Auto", // New: ("None", "BCN", "Auto") - Texture compression format
  "option_windows_audio_compression": "Vorbis", // New: ("None", "Vorbis", "Opus") - Default audio compression
  "option_windows_preload_textures": true, // New: Preload textures at start vs streaming
  "option_windows_preload_audio": true, // New: Preload audio at start vs streaming

  // --- GMS Internal ---
  "resourceType":"GMWindowsOptions",
  "resourceVersion":"2.0" // Potentially update this if new features require a new version spec
}
