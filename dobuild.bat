rmdir /q /s build
mkdir build
mkdir build\assets
xcopy /e /i assets build\assets
twee2 build story.tw ./build/story.html
