export THIS_VIDEO=${THIS_VIDEO:-e45268a1-c4cc-4d72-a74f-ba082fd0f7ef_small_group_normal}

turkic load $THIS_VIDEO videos/extracted/$THIS_VIDEO ishani brandon liang ning pramod farhad --offline
turkic publish --offline
read -p "Press Enter after annotation"
turkic dump $THIS_VIDEO -o outputs/$THIS_VIDEO.txt
mysqldump -u root -p vatic > sqls/$THIS_VIDEO.sql