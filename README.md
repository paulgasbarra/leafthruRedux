
##Leafthru
A personalised news aggregator for busy people with style and brains.

## Intro
Scrambling to find relevant news in the morning?

Want to know what your friends are reading during the day?

Need to win that argument with your family in the evening?

Leafthru brings together your favorite news through your favorite social media channels, Twitter and Facebook, so that you can stay up to date and ahead of the game, any time of the day.

##Resources & Documentation:
  * Framework: `'rails', '4.1.1'
  `
  * Leafthru utilized the Twitter gem, Google Feed API and Alchemy API for its main functionality. Google Feed API is used to pull news from multiple publications' RSS feeds (javascript, json). The Twitter gem assists in obtain article urls from the reader's Twitter feed and Alchemy is used to extract title and text from those urls.
    https://developers.google.com/feed/v1/?csw=1
    http://www.alchemyapi.com/api/
    https://github.com/sferik/twitter

  * We use three omniauth gems for authentication and Sorcery for validation:
  https://github.com/intridea/omniauth
  https://github.com/arunagw/omniauth-twitter
  https://github.com/mkdynamic/omniauth-facebook
  https://github.com/NoamB/sorcery

  * The front-end is built with Rails built-in SASS and JQuery gems, as well as Jquery UI and Font Awesome:
  https://github.com/joliss/jquery-ui-rails
  http://fortawesome.github.io/Font-Awesome/icons/

  * The database (`db/seeds.rb`) is seeded with a collectionn of publication RSS feed URLs for the reader to choose from.

Developed by [Nessa Nguyen](http://nessanguyen.com), Paul Gasbarra & Rebecca Strong.




