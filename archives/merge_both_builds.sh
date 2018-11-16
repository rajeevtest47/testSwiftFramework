framework_name="testSwiftFramework" && \
cp -R iphoneos/$framework_name.framework ./combined/$framework_name.framework && \
lipo -create -output "./combined/$framework_name.framework/$framework_name" \
"./simulator/$framework_name.framework/$framework_name" \
"./iphoneos/$framework_name.framework/$framework_name" 