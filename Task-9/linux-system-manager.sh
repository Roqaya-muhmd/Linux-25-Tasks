#! /usr/bin/bash
echo  "========== Linux System Manager =========="
echo "1. Show System Information"
echo "2. Check File Permissions"
echo "3. Change File Permissions"
echo "4. Compress a File/Directory"
echo "5. Decompress a File"
echo "6. Exit"
echo "=========================================="
read -p " Enter your choice: " choicce

    case $choicce in
        1)
            echo "Current User: $(whoami)";;
        2)
             read -p "Enter the filename: " filename
            if [ -e "$filename" ]; then
                echo "Permissions for $filename: $(ls -l "$filename" | awk '{print $1}')"
            else
                echo "File does not exist."
            fi
            ;;
       3)
            read -p "Enter the filename: " filename
            if [ -e "$filename" ]; then
                read -p "Enter the new permissions (e.g., 755): " permissions
                chmod "$permissions" "$filename"
                echo "Permissions for $filename changed to successfuly."
            else
                echo "File does not exist."
            fi
            ;;
              4)
            read -p "Enter the file or directory name: " name
            if [ -e "$name" ]; then
            echo "choose compression type:  "
                echo "1. tar.gz"
                echo "2. zip"
                read -p "Enter choise: " choise
                case $choise in
                    1)
                        tar -czf "${name}.tar.gz" "$name"
                        echo "Compression successful: ${name}.tar.gz created"
                        ;;
                    2)
                        zip -r "${name}.zip" "$name"
                        echo "Compression successful: ${name}.zip created"
                        ;;
                    *)
                        echo "Invalid choice."
                        ;;
                esac
            else
                echo "File or directory does not exist."
            fi
            ;;
        5)
            # Decompress a File
            read -p "Enter the compressed file name: " compressed_file
            if [ -e "$compressed_file" ]; then
            echo "Extracting..."
                case "$compressed_file" in
                    *.tar.gz)
                        tar -xzf "$compressed_file"
                        rm "$compressed_file" 

                        echo "Decompression successful."  
                        ;;
                    *.zip)
                        unzip "$compressed_file"
                        rm "$compressed_file" 
                        echo "Decompression successful."  
                        ;;
                    *)
                        echo "Unsupported file format."
                        ;;
                esac
            else
                echo "File does not exist."
            fi
            ;;
        6)
            # Exit
            echo "Exiting the system manager. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac