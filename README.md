# I Wear Sneakers
R project for sending an alert when a YouTube channel hits a certain number of views.

## Config
Fill out a `config.xml` in the same format as `sample_confg.xml` and save it in the same directory. To get an API key, go [here](https://console.developers.google.com) and create a project for the YouTube Data API.

## RPushbullet
To setup `RPushbullet`, make an account [here](https://www.pushbullet.com/) and then follow [these instructions](https://github.com/eddelbuettel/rpushbullet#initialization) to setup your account.

My `~/rpushbullet.json` looks like:
```
{
  "key": "<key>",
  "devices": [],
  "names": []
}
```
## Schedule
To schedule mine, I just added `0 * * * * cd <path to>/IWearSneakers && Rscript main.R` to my crontab file.
