import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Ease your life", "Book a parking...", "And be on the go!"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
