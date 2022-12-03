# high-scripts
Here you will find all changes of our resource configuration and translation files. You might also find translations for your language too!

[![Docs](https://i.imgur.com/gHAoZ9Bm.png)](https://docs.high-scripts.com) [![Discord Invite](https://discordapp.com/api/guilds/898526244428189818/widget.png?style=banner2)](https://discord.gg/E47Pc8AQEA)

# Translations and contribution
We cannot make sure that all the translations are right and are mistake-free. Use at your own risk!

Any translations that include bad words or wrong translations should be reported immediately on [our Discord group!](https://discord.gg/E47Pc8AQEA)

## Using translations from this repository

If you've found your language's translation file, you can download it and use it for your resource!

To install correctly, follow these simple steps:

1. Download the repository source code as there are no releases.
2. Take the translation files out of the downloaded code
    - **high-phone**
    
      1. Drag the `high_phone/locales` folder from the downloaded code to your `high-phone`'s folder in your server.
      2. Open both configuration files in your `high-phone` folder in your server: `high_phone/config.js` and `high_phone/config.lua`
      3. Change `Config.Language` to the language's you've uploaded abbreviation (the name of the newly downloaded and uploaded locale file).
      4. Open `high_phone/html/index.html` and find line 
      
      ```html
      <script type="text/javascript" src="../locales/en.js"></script>
      ```

      Replace the `en.js` with the newly downloaded and uploaded translation javascript file name. There will be two of them in the `high_phone/locales` directory, `your-language.lua` and `your-language.js`, change it to the one ending with `.js` like so:
      
      ```html
      <script type="text/javascript" src="../locales/your-language.js"></script>
      ```
      
      And that's it! Make sure to restart the server or refresh the resources and restart the phone.
      
## Contributing to translations
We really appreciate the people contributing to translating our phone for more languages so that more people from all over the world could join our amazing community!

+ To be able to contribute you will have to download git from https://git-scm.com/downloads

1. Fork the repository.
2. Clone your fork into your local machine.
```
git clone https://github.com/YOUR_GITHUB_NAME/high-scripts.git
```
3. Add your own translation files or modify an existing one.
4. Commit your changes
```
git add .
git commit -m "Description of your commit"
git push
```
5. Finally, open a pull request
    1. Open your forked repository on https://github.com
    2. Find the message `This branch is x commit(s) ahead of Tadehz:main` click the `Contribute` button on the right side of the message and then `Open Pull Request`
    3. You can put a description of your changes and you should keep the `Allow edits by maintainers` option toggled on.
    4. After you've double checked everything, just click on the green `Create pull request` button on the bottom right corner.
    5. We will review your pull request and merge it to the main branch if everything is good in up to 24 hours.

## Contributors

:fr: Thanks to [Eznoff](https://github.com/Eznoff) for the French (FR) translation.

:de: Thanks to [GhostLegionRP](https://github.com/GhostLegionRP) for the Deutsch (DE) translation.

:cz: Thanks to [IceCubePiso](https://github.com/icecubepiso) for the Czech (CZ) translation.
