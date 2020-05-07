var ready;

ready = function() {
  Typed["new"]('.element', {
    strings: ["I am a web developer with about 8 years of professional experience in various web based technologies like Ruby on Rails, javascript, jquery, html, css etc . I have a graduation degree from University of Mumbai I am dedicated,hard working and inquisitive professional and strive for perfection and excellence in my work."],
    typeSpeed: 0,
  });
};

$(document).ready(ready);

$(document).on('turbolinks:load', ready);



