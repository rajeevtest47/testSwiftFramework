//
//  postbuild.sh
//  testSwiftFramework
//
//  Created by Rajeev Rajeshuni on 15/11/18.
//  Copyright © 2018 Rajeev Rajeshuni. All rights reserved.
//

function copyFramework
{
    local finalFolder="archives"
    local fileName="${BUILT_PRODUCTS_DIR}/${FULL_PRODUCT_NAME}"
    #local deviceBuildFile = "${BUILD_DIR}/${CONFIGURATION}-iphoneos/${PRODUCT_NAME}.framework"
    # local simulatorBuildFile =
    rm -rf ${finalFolder}
    mkdir -p ${finalFolder}
    cp -a ${fileName} ${finalFolder}
}
copyFramework
