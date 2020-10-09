# You Quote It, You Note It!

Twine-based reimagination of the Vaughan Memorial Library's award-winning original _You Quote It, You Note It!_ Adobe Flash plagiarism tutorial.

## License

Please refer to ``LICENSE.md``.

## Contact

[information-literacy@acadiau.ca](mailto:information-literacy@acadiau.ca)

Acadia University: [Vaughan Memorial Library](https://library.acadiau.ca)
50 Acadia Street, Wolfville, Nova Scotia, Canada, B4P 2R6

[https://library.acadiau.ca/research/citation-help.html]

## Build Instructions

**Important:** This project uses Twee and SCSS source files and must be compiled using Twee2. It is not compatible with Twine's standard GUI editor.

Requirements:

- [Twee2](https://dan-q.github.io/twee2/) which itself requires [Ruby](https://www.ruby-lang.org/) (version 2.0 or newer) and Gems package manager.
- [SugarCube 2](https://www.motoslave.net/sugarcube/2/) version 2.33.2 or newer.

Build the project via script:

- From the command line, run ``/build`` (Linux) or ``build.bat`` (Windows) found in the project folder to automatically compile the twee and SCSS source files.

Or if you prefer to build the project manually:

- Create an empty ``/build`` directory in the project root.
- Copy ``/README.md`` to ``/build``
- Copy ``/LICENSE.md`` to ``/build``
- Copy the entire ``/assets`` directory to ``/build/assets``.
- From the project root directory, run ``twee2 build story.tw ./build/story.html``

Google Analytics (optional):
- Open ``/build/story.html`` in a plain-text editor.
- Insert your Google Site Tag snippet in the ``<head>`` block between the ``<meta name="viewport" ...>`` tag and SugarCube preamble comments block.
- If _You Quote It, You Note It!_ renders improperly or displays error messages when viewed in a browser after inserting Google Analytics code, you can assume that either there is a syntax error—double-check placement of the Google Site Tag snippet—or that your text editor improperly saved ``story.html`` (in which case, you must start over and rebuild the project from scratch).

Once built, copy the contents of the ``/build`` directory to your web host. You may rename ``story.html`` to ``<something_else>.html`` if so desired.

## Making Changes

Changes can be made to the project's Twee and SCSS files using your favorite text editor. If you do so, please be sure to change the value of ``Twee2::build_config.story_ifid`` in ``twee2_configuration.tw`` before rebuilding the project in order to distinguish your variant from the official application.

- ``twee2_configuration.tw``: Twee2-specific configuration settings, plus global SugarCube2 overrides.
- ``story.tw``: Story initialization, includes, and select application-level passages.
- ``storyinclude_<X>.tw``: Included story passages broken up into logical components.
  - ``storyinclude_common.tw``: Content passages that are common to the entire tutorial, regardless of citation style.
  - ``storyinclude_style_<apa|asa|chicago|mla>.tw``: Content passages specific to an individual citation style—APA, ASA, Chicago and MLA.
  - ``storyinclude_license.tw``: License information passage.
  - ``storyinclude_headerfooter.tw``: Global header and footer portions of the user interface.
  - ``storyinclude_macros.tw``: Assorted macro functions used throughout the application.
  - ``storyinclude_debug.tw``: Debugging passages, macros and CSS. Used only when ``$debug = 1`` in ``story.tw``.
- ``css_story.scss``: SCSS-syntax stylesheet for the entire application.
- ``assets/``: Supplementary assets including audio, emoji and images. (Note: No images are included with the project by default.) 
- ``dowatch`` and ``dowatch.bat``: Project watch scripts—allows one to make changes and recompile automatically for real-time application testing in a web browser. (Requires Google Chrome to be installed on your computer.)
- ``dobuild`` and ``dobuild.bat``: Project build scripts.
- ``include_google_analytics.html``: Google Site Tag snippet for optional Google Analytics addition post-build. Don't forget to replace the ``UA-...`` ID value with that from your own Analytics account.
- ``sugarcube2/SugarCube2.33.2/``: SugarCube2 story format version 2.33.2 provided for convenience.

## Resources

### Twine - platform

- [Twine](https://twinery.org/)
- [Twine Q&A forum](https://twinery.org/questions/)
- [Reddit: /r/twinegames](https://www.reddit.com/r/twinegames/)
- [general Twine resources](https://github.com/ChapelR/twine-resources)

### SugarCube - story format

- [SugarCube 2](https://www.motoslave.net/sugarcube/2/)
- [SugarCube v2 Developer Documentation](https://www.motoslave.net/sugarcube/2/docs/)

### Twee2 - build tool

- [Twee2](https://dan-q.github.io/twee2/)
- [Twee2 Developer Documentation](https://dan-q.github.io/twee2/documentation.html)

### Third-Party Assets

- [Freesound](https://freesound.org/): sound clip repository; items licensed under Creative Commons  
- [Google Fonts](https://fonts.google.com/)
- [OpenDyslexic](https://opendyslexic.org/): font face
- [Twemoji](https://twemoji.twitter.com/): Twitter's open source emoji set
