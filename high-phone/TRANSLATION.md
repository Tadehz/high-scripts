# Use an existing translation

1. First, download this repository

2. Put the `locales` folder in your high_phone script

3. Change the language

    Find this line in the index.html (located in `high_phone\html\index.html`)

    ```html
    <script type="text/javascript" src="../locales/en.js"></script>
    ```

    And replace the `en` by your language abbreviation.
    
    For exemple : `fr` for french and `en` for english

    After that, open config.js and config.lua and replace the same way the `en` from `Config.Language = "en"` to your language abbreviation.

4. Restart and you're done !

# Contribute to translation

1. First, fork this repository

2. Clone it from your github profile

3. Create or edit a translation

4. Commit and push your changes

    With the commands (you need to have git installed on your pc : https://gitforwindows.org) : 

        git add .
        git commit -m "title of your changes"
        git push

5. Contribute

    Go on your github repository and you will see `This branch is 1 commit ahead of Tadehz:main` and click to contribute and create pull request

    If you want, you can put a description of your changes.

    You should keep enabled the checkbox `Allow edits by maintainers`, if highrider want to correct or edit your changes.

    And finally, click on create pull request.