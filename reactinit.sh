echo "Enter Project Name: "
read project
if [[ -d $project ]]; then
moveon=0
else
moveon=1
fi
if [[ $moveon == 0 ]]; then
echo "ERROR: That directory already exists"
else
npx create-react-app $project
cd $project
echo "**CLEARING SRC DIRECTORY**"
rm -rf src
mkdir src
cd src
echo "**CREATING NEW FILES**"
touch index.css
touch index.js
echo "**ADDING PACKAGES**"
echo -e "import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';" >> index.js
echo "**DONE SETTING UP PROJECT"
echo "**STARTING LOCAL DEVELOPMENT SERVER**"
npm start
fi
