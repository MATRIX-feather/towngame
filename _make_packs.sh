#设置变量
datapack_file=`sed -n '2,2p' _config`.zip
respack_file=`sed -n '4,4p' _config`.zip
resources=`sed -n '6,6p' _config`
readonly NAME=`sed -n '2,2p' _config`
readonly FILE=$(basename "$0")
readonly VERSION=`sed -n '8,8p' _config`
#设置默认值
datapack=1
respack=1
#处理
usage() {
cat <<EOF
用法:
  $FILE [参数..]

参数:
  -h                            显示帮助列表.
  -v                            显示版本信息.
  -nd                           不压缩数据包.
  -nr                           不压缩资源包.
EOF
}
# shift:左移参数,如 : ./bash 1 2 --shift--> ./bash 2
while [[ $# -gt 0 ]]; do
    arg=$1
    
    case $arg in

            -nd)
                datapack=0;
                shift;
                ;;

            -nr)
                respack=0;
                shift;
                ;;

            -h)
                usage;
                shift;
                exit 0;
                ;;
            
            -v)
                echo "$NAME : $VERSION";
                shift;
                exit 0;
                ;;

            *)
                printf "%s : 未知的参数 %s\n请使用 \"$FILE --help\" 查看帮助\n" "$FILE" "$1";
                exit 1;
                shift;
            ;;

    esac
done

#压缩数据包
if [ $datapack == 1 ];then
    zip -r -9 datapack.zip ./data/* > /dev/null
    zip -r -9 datapack.zip pack.mcmeta > /dev/null
    zip -r -9 datapack.zip Changelog.md > /dev/null
    zip -r -9 datapack.zip README.md > /dev/null
fi
#压缩资源包(以下步骤是为了解决符号链接问题)
if [ $respack == 1 ];then
    cd $resources
    zip -r -9 respack.zip ./* > /dev/null
    cd ..
    mv ./$resources/respack.zip ./
fi


#重命名
mv datapack.zip "$datapack_file"
mv respack.zip "$respack_file"
#显示结果
echo "数据包文件: $datapack_file"
echo "资源包文件: $respack_file"