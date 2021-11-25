import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Ease your life", "Book a parking"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
