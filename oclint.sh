myworkspace=CIDemo.xcodeproj
myscheme=CIDemo

#清空
# echo "clean"
# xcodebuild -project $myworkspace  -scheme $myscheme -configuration Debug clean # -sdk iphonesimulator12.1
#
# # xcodebuild -project $myworkspace -scheme $myscheme -configuration Debug CLANG_ENABLE_MODULE_DEBUGGING=NO CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO ENABLE_BITCODE=NO COMPILER_INDEX_STORE_ENABLE=NO | tee xcodebuild.log | xcpretty -r json-compilation-database --output compile_commands.json
#
# xcodebuild -project $myworkspace -scheme $myscheme -configuration Debug ENABLE_BITCODE=NO COMPILER_INDEX_STORE_ENABLE=NO | tee xcodebuild.log | xcpretty -r json-compilation-database --output compile_commands.json
# oclint-json-compilation-database -e Pods -- -o=report.html


xcodebuild clean
xcodebuild | xcpretty -r json-compilation-database
cp build/reports/compilation_db.json compile_commands.json
oclint-json-compilation-database -e Pods  -- -rc=LONG_LINE=200 -rc=NCSS_METHOD=100  -o=report.html
