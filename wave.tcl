set dir /home/asautaux/yarr

#write_hw_ila_data $dir/axis_data.zip [upload_hw_ila_data hw_ila_1]
display_hw_ila_data [read_hw_ila_data $dir/axis_data.zip]
