#设置变量
datapack_file=`sed -n '2,2p' _config`.zip
respack_file=`sed -n '4,4p' _config`.zip
resources=`sed -n '6,6p' _config`
#压缩数据包
zip -r -9 datapack.zip ./data/* > /dev/null
zip -r -9 datapack.zip pack.mcmeta > /dev/null
zip -r -9 datapack.zip Changelog.md > /dev/null
zip -r -9 datapack.zip README.md > /dev/null
#压缩资源包(以下步骤是为了解决符号链接问题)
cd $resources
zip -r -9 resources.zip ./*
cd ..
mv ./$resources/resources.zip ./
#重命名
mv datapack.zip "$datapack_file"
mv resources.zip "$respack_file"
#显示结果
echo "数据包文件: $datapack_file"
echo "资源包文件: $respack_file"