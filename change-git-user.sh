#/usr/env/sh
name="vivaxy"
email="xyxuye2007@126.com"
for dir in `find ./* -maxdepth 0 -type d`
do
    cd ${dir}
    pwd=`pwd`
    currentName=`git config user.name`
    currentEmail=`git config user.email`
    if [ ${name} == ${currentName} ] && [ ${email} == ${currentEmail} ]
    then
        echo "check  ${pwd}"
    else
        git config user.name ${name}
        git config user.email ${email}
        echo "update ${pwd}"
    fi
    cd ..
done
