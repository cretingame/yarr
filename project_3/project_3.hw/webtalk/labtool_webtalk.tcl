webtalk_init -webtalk_dir /home/asautaux/project_3/project_3.hw/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Wed Sep 28 11:30:46 2016" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "Vivado v2016.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "1577090" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "labtool" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "5a136cf3-3410-42f8-a355-509c3761fe1a" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "6a213c37-3d5a-44a0-9020-7717cae1e562" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "5" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "CentOS" -context "user_environment"
webtalk_add_data -client project -key os_release -value "CentOS Linux release 7.2.1511 (Core)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i5-4690 CPU @ 3.50GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3500.000 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.000 GB" -context "user_environment"
webtalk_register_client -client labtool
webtalk_add_data -client labtool -key pgmcnt -value "00:00:00" -context "labtool\\usage"
webtalk_add_data -client labtool -key cable -value "" -context "labtool\\usage"
webtalk_transmit -clientid 800766874 -regid "" -xml /home/asautaux/project_3/project_3.hw/webtalk/usage_statistics_ext_labtool.xml -html /home/asautaux/project_3/project_3.hw/webtalk/usage_statistics_ext_labtool.html -wdm /home/asautaux/project_3/project_3.hw/webtalk/usage_statistics_ext_labtool.wdm -intro "<H3>LABTOOL Usage Report</H3><BR>"
webtalk_terminate
