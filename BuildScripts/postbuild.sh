//
//  postbuild.sh
//  testSwiftFramework
//
//  Created by Rajeev Rajeshuni on 15/11/18.
//  Copyright © 2018 Rajeev Rajeshuni. All rights reserved.
//
iphoneos = "iphoneos"
function copyFramework
{
    local finalSimulatorFolder="archives/simulator/"
    local finaliphoneOSFolder="archives/iphoneos/"
    local fileName="${BUILT_PRODUCTS_DIR}/${FULL_PRODUCT_NAME}"
    #local deviceBuildFile = "${BUILD_DIR}/${CONFIGURATION}-iphoneos/${PRODUCT_NAME}.framework"
    # local simulatorBuildFile =
    if echo "${BUILT_PRODUCTS_DIR}" | grep -q "iphoneos"; then
        rm -rf ${finaliphoneOSFolder};
        mkdir -p ${finaliphoneOSFolder};
        cp -a ${fileName} ${finaliphoneOSFolder};
    else
        rm -rf ${finalSimulatorFolder};
        mkdir -p ${finalSimulatorFolder};
        cp -a ${fileName} ${finalSimulatorFolder};
    fi
}
copyFramework
