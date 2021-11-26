import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Don't mess your self for parking, long lines, and multiple hassles","Ease your life", "Book a parking...", "And be on the go!"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
