mkdir _tmp
rm packdates

#压缩数据包
zip -r datapack.zip ./data/*
zip -r datapack.zip pack.mcmeta
zip -r datapack.zip Changelog.md
zip -r datapack.zip README.md
#压缩资源包
zip -r resources.zip ./_respack/*

mv datapack.zip "towngame_datapack.zip"