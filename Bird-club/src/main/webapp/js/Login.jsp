<!DOCTYPE html>
<html class="h-full bg-gray-100">
  <head>
  <title>BirdClub</title>
  <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="xZSI_onPxZx7kEOGfXQ1j2qEuKPpOzK5687O3KOlaDk7d54WUjVp5vnHqxsG2r0y68hSno_3IEjHJirfHey5wg" />
  
  <meta name="action-cable-url" content="wss://www.bird.club/cable" />
  <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
  <link rel="stylesheet" href="https://www.bird.club/assets/application-e28f118614ca4a1f17d351ebc8dde1991c2801620fc57b5bed8bdf702a5f10e7.css" data-turbo-track="reload" />
<link rel="stylesheet" href="https://www.bird.club/assets/lightbox-020432d3fc86fbb4b2dd26e6a1f8875311d74ec975db9bc2b15108926f952e7f.css" data-turbo-track="reload" />
<link rel="stylesheet" href="https://www.bird.club/assets/trix-ac629f94e04ee467ab73298a3496a4dfa33ca26a132f624dd5475381bc27bdc8.css" data-turbo-track="reload" />
<link rel="stylesheet" href="https://www.bird.club/assets/actiontext-dfc9b48c08497309387b4a0b3363f2eab057e4e90495f8d3ff1e2333132cc094.css" data-turbo-track="reload" />
<link rel="stylesheet" href="https://www.bird.club/assets/mapbox-fc5950363a3f029d3ba4df20815fe4a46c8f62c046cf2a032a333caa6e091555.css" data-turbo-track="reload" />
  <script src="https://www.bird.club/assets/javascript/application-951dfa64380d0c18e6bed336edfce393f2a8c83a2b818269476b2d2271cd4b3c.js" data-turbo-track="reload" defer="defer"></script>
<script src="https://www.bird.club/assets/activestorage-2be1208d0cfd359f5a555fbc65d29e0aa9ce544d38844eb59aef0f1213e55ade.js" data-turbo-track="reload" defer="defer"></script>
<script src="https://www.bird.club/assets/actioncable-ca0a4aee29ae2d01089a4d5e10d0540c43c8e2038d85819b59029ddfa4ca5da5.js" data-turbo-track="reload" defer="defer"></script>
<script src="https://www.bird.club/assets/actiontext-acde4d42660203a68336896e9c2d2c9865fd2ccc999f75671d83415e7c98c99e.js" data-turbo-track="reload" defer="defer"></script>
  <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png?v=M4K5PaEa4d">
  <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png?v=M4K5PaEa4d">
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png?v=M4K5PaEa4d">
  <link rel="manifest" href="/site.webmanifest?v=M4K5PaEa4d">
  <link rel="mask-icon" href="/safari-pinned-tab.svg?v=M4K5PaEa4d" color="#5bbad5">
  <link rel="shortcut icon" href="/favicon.ico?v=M4K5PaEa4d">
  <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
  <meta name="msapplication-TileColor" content="#0d9488">
  <meta name="theme-color" content="#ffffff">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,user-scalable=0"/>
  <script defer data-domain="bird.club" src="https://plausible.io/js/plausible.js"></script>
</head>

  <body class="h-full font-sans">
    <nav class="bg-white" data-controller="navbar">
  <div class="mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex justify-between h-16">
      <div class="flex">
        <div class="flex-shrink-0 flex items-center text-4xl tracking-tight font-extrabold text-gray-900">
          <a href="/">
            <img alt="BirdClub logo" srcset="https://www.bird.club/assets/logo/logo@2x-956290beed33ed2841b61b3f880995d6c6951252a264e6615c7338a75336109e.png 2x, https://www.bird.club/assets/logo/logo@4x-fd2728b28bda915145a696aa1dd9344b6b1211bce8a3d93ece4a28683fbe4d88.png 4x" src="https://www.bird.club/assets/logo/logo-312ed022e9e8abb1fcfcdfd5eaa3fd93fb11e7d70d4eef74149a7ba17c311e71.png" width="150" height="49" />
</a>        </div>
      </div>
      <div class="-mr-2 flex items-center sm:hidden">
        <button data-action="click->navbar#toggle" type="button" class="border-transparent inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-teal-500" aria-controls="mobile-menu" aria-expanded="false">
          <span class="sr-only">Open main menu</span>
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class=" w-6 h-6" data-navbar-target="close">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
</svg>

          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="hidden w-6 h-6" data-navbar-target="open">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
</svg>

        </button>
      </div>
      <div class="hidden sm:ml-6 sm:flex sm:items-center">

      <div class="space-x-8">
        <a class="whitespace-nowrap text-base font-medium text-gray-500 hover:text-gray-900" href="signin.jsp">Sign in</a>
          <a class="px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2" href="signup.jsp">
    Sign up
</a>
      </div>
  </div>

    </div>
  </div>
    <div class="hidden sm:hidden" id="mobile-menu" data-navbar-target="menu">
    <div class="pb-3 border-t border-gray-200">
      <div class="mt-3 space-y-1">
        <a class="block px-4 py-2 text-base font-medium text-gray-500 hover:text-gray-800 hover:bg-gray-100" role="menuitem" tabindex="-1" href="/members/sign_in">Sign in</a>
      </div>
    </div>
  </div>

</nav>

    <div data-controller="modal" data-modal-target="container" data-modal-id-value="modal" data-modal-persist-value="false" class="hidden fixed z-[2000] inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
  <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
    <div 
      data-modal-target="overlay"
      data-action="click->modal#close"
      class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"
      aria-hidden="true"
      data-transition-enter="transition ease-out duration-300"
      data-transition-enter-start="opacity-0"
      data-transition-enter-end="opacity-100"
      data-transition-leave="transition ease-in duration-200"
      data-transition-leave-start="opacity-100"
      data-transition-leave-end="opacity-0"
      >
    </div>
    <!-- This element is to trick the browser into centering the modal contents. -->
    <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
    <div 
      data-modal-target="content" 
      class="hidden relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg w-full sm:p-6"

      data-transition-enter="transition ease-out duration-300"
      data-transition-enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
      data-transition-enter-end="opacity-100 translate-y-0 sm:scale-100"

      data-transition-leave="transition ease-in duration-200"
      data-transition-leave-start="opacity-100 translate-y-0 sm:scale-100"
      data-transition-leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
    >
      <div class="hidden sm:block absolute top-0 right-0 pt-4 pr-4">
        <button data-action="click->modal#close" type="button" class="bg-white rounded-md text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-slate-500">
          <span class="sr-only">Close</span>
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class=" w-6 h-6">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
</svg>

        </button>
      </div>
      <div class="sm:flex sm:items-start">
        <turbo-frame data-modal-target="test" class="w-full" id="modal" target="_top"></turbo-frame>
      </div>
    </div>
  </div>
</div>

    <turbo-frame id="flash"></turbo-frame>
    <main class="bg-white">
  <div class="pt-20 pb-16 text-center lg:pt-32 mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
    <h1 class="mx-auto max-w-4xl font-display text-5xl font-medium tracking-tight text-slate-900 sm:text-7xl">
      Your bird club
      <span class="relative whitespace-nowrap text-teal-600">
        online
      </span>
    </h1>

    <p class="mx-auto mt-6 max-w-2xl text-lg tracking-tight text-slate-700">
      Whether it?s for a large club or just you and your friends, BirdClub provides you with a space to connect, share records and publish photos - all for free.
    </p>

    <div class="mt-10 mb-36 lg:mb-44 flex justify-center space-x-6">
          <a class="px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2" href="Aboutus.jsp">
    About Us
</a>
        <a class="px-4 py-2 text-sm border-gray-300 text-gray-700 bg-white hover:border-gray-500 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2" href="Contactus.jsp">
    Contract us
</a>
    </div>

    <div class="relative flex items-center mx-auto self-center justify-center overflow-x-hidden">
      <div class="absolute left-0 top-0 bottom-0 bg-gradient-to-r from-white w-24 md:w-48"></div>
      <div class="absolute right-0 top-0 bottom-0 bg-gradient-to-l from-white w-24 md:w-48"></div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-indigo-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/eurasian-crane-506511f4c3bea63bc57d4e6b3e10f7deeaa9a08ad3df84d7beac8e9c705e7063.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-rose-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/amazon-6d7db945e1d9b7e7a7a6fe731c8e39c0220324c70843eceb9f57fbf3d321f095.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-neutral-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/falcon-fb43924909f2277bbdaaec60ad450332284dc286d142a80ea68debf1312b53e2.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-rose-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/roller-7966721032ced0a6dbb83110c6f6f7de3f0e5dfa06c70e629d497a39f2e78238.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-green-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/turtle-dove-8003a59e502b438ba2e65edec592853747c5babf9c90ef069b6ba3a39918c11b.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-emerald-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/black-vulture-364dd10a179e52e2106ed8b51bd06b761c87d13f585a00c1594faa967bf3a1bd.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-purple-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/nightjar-36fe6508a49f31df194fe4fcc4b059e60b10b086e61be21f42e528d2f0666691.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-cyan-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/black-headed-gull-f151c37de13f1ed99a297681894a8f31499cab39745d4cd2029d1ad6d75f9ff6.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-green-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/white-tailed-ptarmigan-5905df8bd0e27a643c2835dc5a93271dbb9cec0d71d831012331f8b178dc8f7f.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-lime-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/swan-f33a27c526442d0c0f117cb5c874bd5a4193ff9746c5dea0b6be1c45f3e9057c.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-lime-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/cuckoo-6c0c306f0f78a5cdb92e54e3da1576e0f01f9ea8e43a1159ee0d813bb7fbf117.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-cyan-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/hoopoe-c785765b0c50e3bf0730cc122214687d1a308fc9c7f566c580c34fd300cb9815.png" />
</div>

        </div>
        <div class="mx-4">
          <div class="w-20 h-20 bg-purple-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
  <img src="https://www.bird.club/assets/avatars/griffon-vulture-61c614c85e80d9f2810d78e8b4297a23bcf9ed4a028cf07d95cfc2ba383e603d.png" />
</div>

        </div>
    </div>
  </div>

  <section
      id="features"
      aria-labelledby="features-title"
      class="relative overflow-hidden bg-gradient-to-br from-teal-600 via-teal-700 to-teal-500 pt-20 pb-28 sm:py-32"
    >
    <div class="relative mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
      <div class="max-w-2xl md:mx-auto md:text-center xl:max-w-none">
        <h2 id="features-title" class="font-display text-3xl tracking-tight text-white sm:text-4xl md:text-5xl">
          Bird clubs made simple.
        </h2>
        <p class="mt-6 text-lg tracking-tight text-teal-100">
          Everything you need is in one place: members, records, photos, and more.
        </p>
      </div>

      <div data-controller="tabs" class="mt-16 grid grid-cols-1 items-center gap-y-2 pt-10 sm:gap-y-6 md:mt-20 lg:grid-cols-12 lg:pt-0">
        <div class="-mx-4 flex overflow-x-auto pb-4 sm:mx-0 sm:overflow-visible sm:pb-0 lg:col-span-5">

          <div class="relative z-10 flex space-x-4 whitespace-nowrap px-4 sm:mx-auto sm:px-0 lg:mx-0 lg:block lg:space-y-1 lg:space-x-0 lg:whitespace-normal">
            <div data-tabs-target="tab" data-tabs-id-param="members-tab" data-action="click->tabs#change" data-tabs-image-param="https://www.bird.club/assets/backgrounds/members-9a5cc7db9e3ef95139d59b5a49eda7aeeb2e6891a221cef79b611e0f765c1506.png" class='group relative rounded-full py-1 px-4 lg:rounded-r-none lg:rounded-l-xl lg:p-6 bg-white lg:bg-white/10 lg:ring-1 lg:ring-inset lg:ring-white/10'>
              <h3>
                <button class='font-display text-lg [&:not(:focus-visible)]:focus:outline-none text-teal-600 lg:text-white'>
                  <span class="absolute inset-0 rounded-full lg:rounded-r-none lg:rounded-l-xl"></span>
                  Members
                </button>
              </h3>
              <p class='mt-2 hidden text-sm lg:block text-white'>
                Create your own club and invite whoever you want to join. Setting up and joining a club is absolutely free.
              </p>
            </div>

            <div data-tabs-target="tab" data-tabs-id-param="records-tab" data-action="click->tabs#change" data-tabs-image-param="https://www.bird.club/assets/backgrounds/records-f07111142a5005914e16151bc879ba47eb8d3840f19e795a0b99ed420e21c5bc.png" class='group relative rounded-full py-1 px-4 lg:rounded-r-none lg:rounded-l-xl lg:p-6 hover:bg-white/10 lg:hover:bg-white/5'>
              <h3>
                <button class='font-display text-lg [&:not(:focus-visible)]:focus:outline-none text-teal-100 hover:text-white lg:text-white'>
                  <span class="absolute inset-0 rounded-full lg:rounded-r-none lg:rounded-l-xl"></span>
                  Records and photos
                </button>
              </h3>
              <p class='mt-2 hidden text-sm lg:block text-white'>
                You and other members of the club can share records and photos via the feed. Whether you?ve been out for a day?s birding or seen something in the garden, sharing it with the group is simple.
              </p>
            </div>

            <div data-tabs-target="tab" data-tabs-id-param="locations-tab" data-action="click->tabs#change" data-tabs-image-param="https://www.bird.club/assets/backgrounds/site-guide-ba982cc2742ebc0b669d0fc615bc61b5364ec8cf67fff927e2d9a0c5d810a83a.png" class='group relative rounded-full py-1 px-4 lg:rounded-r-none lg:rounded-l-xl lg:p-6 hover:bg-white/10 lg:hover:bg-white/5'>
              <h3>
                <button class='font-display text-lg [&:not(:focus-visible)]:focus:outline-none text-teal-100 hover:text-white lg:text-white'>
                  <span class="absolute inset-0 rounded-full lg:rounded-r-none lg:rounded-l-xl"></span>
                  Site guides
                </button>
              </h3>
              <p class='mt-2 hidden text-sm lg:block text-white'>
                Let everyone know all about the best places to go birding in your local area. Members of the club can check out the site guide and any recent sightings.
              </p>
            </div>

            <div data-tabs-target="tab" data-tabs-id-param="communication-tab" data-action="click->tabs#change" data-tabs-image-param="https://www.bird.club/assets/backgrounds/conversation-9ad65d8aa216203b450d432a1cdc9452fa9522f70ea99b6dfbddb507b953fa1d.png" class='group relative rounded-full py-1 px-4 lg:rounded-r-none lg:rounded-l-xl lg:p-6 hover:bg-white/10 lg:hover:bg-white/5'>
              <h3>
                <button class='font-display text-lg [&:not(:focus-visible)]:focus:outline-none text-teal-100 hover:text-white lg:text-white'>
                  <span class="absolute inset-0 rounded-full lg:rounded-r-none lg:rounded-l-xl"></span>
                  Communication
                </button>
              </h3>
              <p class='mt-2 hidden text-sm lg:block text-white'>
                You can easily communicate with other members of the club by making announcements, messaging them directly or adding important events.
              </p>
            </div>
          </div>
        </div>

        <div class="lg:col-span-7">
          <div data-tabs-target="panel" id="members-tab">
            <div class="relative sm:px-6 lg:hidden">
              <div class="absolute -inset-x-4 -top-[6.5rem] -bottom-[4.25rem] bg-white/10 ring-1 ring-inset ring-white/10 sm:inset-x-0 sm:rounded-t-xl"></div>
              <p class="relative mx-auto max-w-2xl text-base text-white sm:text-center">
                Create your own club and invite whoever you want to join. Setting up and joining a club is absolutely free.
              </p>
            </div>

            <div class="relative mt-10 aspect-[1085/730] w-[45rem] overflow-hidden rounded-xl bg-slate-50 shadow-xl shadow-teal-900/20 sm:w-auto lg:mt-0 lg:w-[67.8125rem]">
              <img srcset="https://www.bird.club/assets/backgrounds/members@2x-c6df03f3dc11e655adede8d313b224034491d1b005d3a681d072f7b13ce3fae8.png 2x, https://www.bird.club/assets/backgrounds/members@4x-446ecc01c8dbc51f62034ad1c56013aee65d7ff18e510a8c816cfd7d1717d164.png 4x" src="https://www.bird.club/assets/backgrounds/members-9a5cc7db9e3ef95139d59b5a49eda7aeeb2e6891a221cef79b611e0f765c1506.png" />
            </div>
          </div>

          <div data-tabs-target="panel" id="records-tab" class="hidden">
            <div class="relative sm:px-6 lg:hidden">
              <div class="absolute -inset-x-4 -top-[6.5rem] -bottom-[4.25rem] bg-white/10 ring-1 ring-inset ring-white/10 sm:inset-x-0 sm:rounded-t-xl"></div>
              <p class="relative mx-auto max-w-2xl text-base text-white sm:text-center">
                Create your own club and invite whoever you want to join. Setting up and joining a club is absolutely free.
              </p>
            </div>

            <div class="relative mt-10 aspect-[1085/730] w-[45rem] overflow-hidden rounded-xl bg-slate-50 shadow-xl shadow-teal-900/20 sm:w-auto lg:mt-0 lg:w-[67.8125rem]">
              <img srcset="https://www.bird.club/assets/backgrounds/records@2x-d0a94643fa9429602430ee7e53f44bb8b04763de8d772f4be859e434dc445787.png 2x, https://www.bird.club/assets/backgrounds/records@4x-5941424ce7741d46c7fbe237a39576938286459432d4b7717d702a76e83ed17b.png 4x" src="https://www.bird.club/assets/backgrounds/records-f07111142a5005914e16151bc879ba47eb8d3840f19e795a0b99ed420e21c5bc.png" />
            </div>
          </div>

          <div data-tabs-target="panel" id="locations-tab" class="hidden">
            <div class="relative sm:px-6 lg:hidden">
              <div class="absolute -inset-x-4 -top-[6.5rem] -bottom-[4.25rem] bg-white/10 ring-1 ring-inset ring-white/10 sm:inset-x-0 sm:rounded-t-xl"></div>
              <p class="relative mx-auto max-w-2xl text-base text-white sm:text-center">
                Create your own club and invite whoever you want to join. Setting up and joining a club is absolutely free.
              </p>
            </div>

            <div class="relative mt-10 aspect-[1085/730] w-[45rem] overflow-hidden rounded-xl bg-slate-50 shadow-xl shadow-teal-900/20 sm:w-auto lg:mt-0 lg:w-[67.8125rem]">
              <img srcset="https://www.bird.club/assets/backgrounds/site-guide@2x-d666721af091e3a9915ff57f659ebd6e033c91792ead2a5676590cd04f597aa7.png 2x, https://www.bird.club/assets/backgrounds/site-guide@4x-152c4b03017fb246d2b43475c18e870942ce5258bcbf8b363e00a24b29f07a6e.png 4x" src="https://www.bird.club/assets/backgrounds/site-guide-ba982cc2742ebc0b669d0fc615bc61b5364ec8cf67fff927e2d9a0c5d810a83a.png" />
            </div>
          </div>

          <div data-tabs-target="panel" id="communication-tab" class="hidden">
            <div class="relative sm:px-6 lg:hidden">
              <div class="absolute -inset-x-4 -top-[6.5rem] -bottom-[4.25rem] bg-white/10 ring-1 ring-inset ring-white/10 sm:inset-x-0 sm:rounded-t-xl"></div>
              <p class="relative mx-auto max-w-2xl text-base text-white sm:text-center">
                Create your own club and invite whoever you want to join. Setting up and joining a club is absolutely free.
              </p>
            </div>

            <div class="relative mt-10 aspect-[1085/730] w-[45rem] overflow-hidden rounded-xl bg-slate-50 shadow-xl shadow-teal-900/20 sm:w-auto lg:mt-0 lg:w-[67.8125rem]">
              <img srcset="https://www.bird.club/assets/backgrounds/conversation@2x-273410a47c7e65828764d0a396e0fd6b259cd520568156b2f2416dddef0ae471.png 2x, https://www.bird.club/assets/backgrounds/conversation@4x-bbd490a157c1afc1306de63fd93470b613f9d02077ea55be51c8a27b201d4a89.png 4x" src="https://www.bird.club/assets/backgrounds/conversation-9ad65d8aa216203b450d432a1cdc9452fa9522f70ea99b6dfbddb507b953fa1d.png" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section
          id="secondary-features"
          aria-labelledby="secondary-features-title"
          class="pt-20 pb-14 sm:pb-20 sm:pt-32 lg:pb-32"
        >
    <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
      <div class="mx-auto max-w-2xl md:text-center">
        <h2  id="secondary-features-title" class="font-display text-3xl tracking-tight text-slate-900 sm:text-4xl">
          We want birding to thrive.
        </h2>
        <p class="mt-4 text-lg tracking-tight text-slate-700">
          By making it as easy as possible to run an online community of local birdwatchers.
        </p>
      </div>

      <div class="-mx-4 mt-20 space-y-10 overflow-hidden px-4 sm:-mx-6 sm:px-6 lg:hidden">
        <div>
          <div class='mx-auto max-w-2xl'>
            <div class='w-10 h-10 rounded-lg bg-teal-600 items-center'>
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="text-white ml-0.5 pt-1 w-9 h-9">
  <path stroke-linecap="round" stroke-linejoin="round" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
</svg>

            </div>
            <h3 class='mt-6 text-sm font-medium text-teal-600'>
              Website
            </h3>
            <p class="mt-2 font-display text-xl text-slate-900">
              A free website for your club.
            </p>
            <p class="mt-4 text-sm text-slate-600">
              By creating a club, you get your own customizable website. You can upload a logo, choose your club colours and add your favourite birding spots.
            </p>
          </div>
          <div class="relative mt-10 pb-10">
            <div class="absolute -inset-x-4 bottom-0 top-8 bg-slate-100 sm:-inset-x-6"></div>
            <div class="relative mx-auto aspect-[844/428] w-[52.75rem] overflow-hidden rounded-xl bg-white shadow-lg shadow-slate-900/5 ring-1 ring-slate-500/10">
              <img srcset="https://www.bird.club/assets/backgrounds/website@2x-bfa63e1090723fdee3e143be87d563bfdf02dc854d6abdff26c5d30d4b0ada6f.png 2x, https://www.bird.club/assets/backgrounds/website@4x-a5c11e2e2399523df3f2da4d82e5d2c19f7b724791a02d7f50d074b7f8287e4d.png 4x" src="https://www.bird.club/assets/backgrounds/website-d51062eb79cb61ac20071aee0a4efec3950d40488b991d011f14e442dc48bfdd.png" />
            </div>
          </div>
        </div>

        <div>
          <div class='mx-auto max-w-2xl opacity-75 hover:opacity-100'>
            <div class='w-10 h-10 rounded-lg bg-teal-600'>
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="text-white ml-0.5 pt-1 w-9 h-9">
  <path stroke-linecap="round" stroke-linejoin="round" d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z"></path>
</svg>

            </div>
            <h3 class='mt-6 text-sm font-medium text-slate-600'>
              Engagement
            </h3>
            <p class="mt-2 font-display text-xl text-slate-900">
              Build a community.
            </p>
            <p class="mt-4 text-sm text-slate-600">
              Members of your club can like, comment and interact with one another via your club?s website. BirdClub is a social network for groups of birders, whether large or small.
            </p>
          </div>
          <div class="relative mt-10 pb-10">
            <div class="absolute -inset-x-4 bottom-0 top-8 bg-slate-100 sm:-inset-x-6"></div>
            <div class="relative mx-auto aspect-[844/428] w-[52.75rem] overflow-hidden rounded-xl bg-white shadow-lg shadow-slate-900/5 ring-1 ring-slate-500/10">
              <img srcset="https://www.bird.club/assets/backgrounds/community@2x-b4ff79f54e755ad845c20b7db6456e7943dec4400eafe9ef6261f09cdeb9ae58.png 2x, https://www.bird.club/assets/backgrounds/community@4x-6cd0c2d49b6f27ab8c641660c2985ad15e9876b643ad910cd3e66b07b9e52227.png 4x" src="https://www.bird.club/assets/backgrounds/community-a06f0005f6b369943ffef398fb9303dea4b1f10dcf0ca6ac5ae263cc787ea9eb.png" />
            </div>
          </div>
        </div>

        <div>
          <div class='mx-auto max-w-2xl opacity-75 hover:opacity-100'>
            <div class='w-10 h-10 rounded-lg bg-teal-600'>
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="text-white ml-0.5 pt-1 w-9 h-9">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207"></path>
</svg>

            </div>
            <h3 class='mt-6 text-sm font-medium text-slate-600'>
              Communication
            </h3>
            <p class="mt-2 font-display text-xl text-slate-900">
              No more mailing lists.
            </p>
            <p class="mt-4 text-sm text-slate-600">
              Share and enjoy each other?s photos via our photo gallery. Photos are classified by species to make it easier to find the photo you?re looking for.
            </p>
          </div>
          <div class="relative mt-10 pb-10">
            <div class="absolute -inset-x-4 bottom-0 top-8 bg-slate-100 sm:-inset-x-6"></div>
            <div class="relative mx-auto aspect-[844/428] w-[52.75rem] overflow-hidden rounded-xl bg-white shadow-lg shadow-slate-900/5 ring-1 ring-slate-500/10">
              <img srcset="https://www.bird.club/assets/backgrounds/gallery@2x-22d1b2c1b8c289bfcc0887d8f43cdc65d6272c4ab5856d8b3b9a228ad9070a7f.png 2x, https://www.bird.club/assets/backgrounds/gallery@4x-ae2e4d55b59dda20fff057737b79d16c85f2b969700300bc841f33d0bf26cc70.png 4x" src="https://www.bird.club/assets/backgrounds/gallery-3d8fc15c923049ef272a14a00a5c20f516051b7fd45ec53f89cdcb22b9d5d485.png" />
            </div>
          </div>
        </div>
      </div>


      <div data-controller="slider" class="hidden lg:mt-20 lg:block">

        <div class="grid grid-cols-3 gap-x-8">
          <div data-slider-target="link" data-slider-index-param="0" data-action="click->slider#change" class="relative">
            <div class='w-10 h-10 rounded-lg bg-teal-600'>
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="text-white ml-0.5 pt-1 w-9 h-9">
  <path stroke-linecap="round" stroke-linejoin="round" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
</svg>

            </div>
            <h3 class='mt-6 text-sm font-medium text-teal-600'>
              <button class="[&:not(:focus-visible)]:focus:outline-none">
                <span class="absolute inset-0"></span>
                Website
              </button>
            </h3>
            <p class="mt-2 font-display text-xl text-slate-900">
              A free website for your club.
            </p>
            <p class="mt-4 text-sm text-slate-600">
              By creating a club, you get your own customizable website. You can upload a logo, choose your club colours and add your favourite birding spots.
            </p>
          </div>

          <div data-slider-target="link" data-slider-index-param="1" data-action="click->slider#change" class="relative opacity-75 hover:opacity-100">
            <div class='w-10 h-10 rounded-lg bg-slate-600'>
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="text-white ml-0.5 pt-1 w-9 h-9">
  <path stroke-linecap="round" stroke-linejoin="round" d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z"></path>
</svg>

            </div>
            <h3 class='mt-6 text-sm font-medium text-slate-600'>
              <button class="[&:not(:focus-visible)]:focus:outline-none">
                <span class="absolute inset-0"></span>
                Engagement
              </button>
            </h3>
            <p class="mt-2 font-display text-xl text-slate-900">
              Build a community.
            </p>
            <p class="mt-4 text-sm text-slate-600">
              Members of your club can like, comment and interact with one another via your club?s website. BirdClub is a social network for groups of birders, whether large or small.
            </p>
          </div>

          <div data-slider-target="link" data-slider-index-param="2" data-action="click->slider#change" class="relative opacity-75 hover:opacity-100">
            <div class='w-10 h-10 rounded-lg bg-slate-600'>
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="text-white ml-0.5 pt-1 w-9 h-9">
  <path stroke-linecap="round" stroke-linejoin="round" d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z"></path>
  <path stroke-linecap="round" stroke-linejoin="round" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z"></path>
</svg>

            </div>
            <h3 class='mt-6 text-sm font-medium text-slate-600'>
              <button class="[&:not(:focus-visible)]:focus:outline-none">
                <span class="absolute inset-0"></span>
                Gallery
              </button>
            </h3>
            <p class="mt-2 font-display text-xl text-slate-900">
              All of your photos in one place.
            </p>
            <p class="mt-4 text-sm text-slate-600">
              Share and enjoy each other?s photos via our photo gallery. Photos are classified by species to make it easier to find the photo you?re looking for.
            </p>
          </div>
        </div>

        <div class="relative mt-20 overflow-hidden rounded-4xl bg-slate-100 px-14 py-16 xl:px-16">
          <div class="-mx-5 flex">
            <div data-slider-target="panel" class="px-5 transition duration-500 ease-in-out [&:not(:focus-visible)]:focus:outline-none" style="transform: translateX(-0%)">
              <div class="relative aspect-[844/428] w-[52.75rem] overflow-hidden rounded-xl bg-white shadow-lg shadow-slate-900/5 ring-1 ring-slate-500/10">
                <img srcset="https://www.bird.club/assets/backgrounds/website@2x-bfa63e1090723fdee3e143be87d563bfdf02dc854d6abdff26c5d30d4b0ada6f.png 2x, https://www.bird.club/assets/backgrounds/website@4x-a5c11e2e2399523df3f2da4d82e5d2c19f7b724791a02d7f50d074b7f8287e4d.png 4x" class="absolute top-0 right-0 left-0 bottom-0" src="https://www.bird.club/assets/backgrounds/website-d51062eb79cb61ac20071aee0a4efec3950d40488b991d011f14e442dc48bfdd.png" />
              </div>
            </div>

            <div data-slider-target="panel" class="px-5 transition duration-500 ease-in-out [&:not(:focus-visible)]:focus:outline-none opacity-60" style="transform: translateX(0%)">
              <div class="relative aspect-[844/428] w-[52.75rem] overflow-hidden rounded-xl bg-white shadow-lg shadow-slate-900/5 ring-1 ring-slate-500/10">
                <img srcset="https://www.bird.club/assets/backgrounds/community@2x-b4ff79f54e755ad845c20b7db6456e7943dec4400eafe9ef6261f09cdeb9ae58.png 2x, https://www.bird.club/assets/backgrounds/community@4x-6cd0c2d49b6f27ab8c641660c2985ad15e9876b643ad910cd3e66b07b9e52227.png 4x" class="absolute top-0 right-0 left-0 bottom-0" src="https://www.bird.club/assets/backgrounds/community-a06f0005f6b369943ffef398fb9303dea4b1f10dcf0ca6ac5ae263cc787ea9eb.png" />
              </div>
            </div>

            <div data-slider-target="panel" class="px-5 transition duration-500 ease-in-out [&:not(:focus-visible)]:focus:outline-none opacity-60" style="transform: translateX(0%)">
              <div class="relative aspect-[844/428] w-[52.75rem] overflow-hidden rounded-xl bg-white shadow-lg shadow-slate-900/5 ring-1 ring-slate-500/10">
                <img srcset="https://www.bird.club/assets/backgrounds/gallery@2x-22d1b2c1b8c289bfcc0887d8f43cdc65d6272c4ab5856d8b3b9a228ad9070a7f.png 2x, https://www.bird.club/assets/backgrounds/gallery@4x-ae2e4d55b59dda20fff057737b79d16c85f2b969700300bc841f33d0bf26cc70.png 4x" class="absolute top-0 right-0 left-0 bottom-0" src="https://www.bird.club/assets/backgrounds/gallery-3d8fc15c923049ef272a14a00a5c20f516051b7fd45ec53f89cdcb22b9d5d485.png" />
              </div>
            </div>
          </div>
          <div class="pointer-events-none absolute inset-0 rounded-4xl ring-1 ring-inset ring-slate-900/10"></div>
        </div>
      </div>
    </div>

  </section>

  <div class="bg-teal-600 bg-gradient-to-br from-teal-600 via-teal-700 to-teal-500">
    <div class="relative sm:py-16">
      <div class="mx-auto max-w-md px-4 sm:max-w-3xl sm:px-6 lg:max-w-7xl lg:px-8">
        <div class="relative px-6 py-10  overflow-hidden sm:px-12 sm:py-20">
          <div class="relative">
            <div class="sm:text-center">
              <h2 class="font-display text-3xl tracking-tight text-white sm:text-4xl md:text-5xl">
                Keep me in the loop.
              </h2>
              <p class="mt-6 mx-auto max-w-2xl tracking-tight text-teal-100">
                Sign up to receive regular updates on what we?re up to at BirdClub.
              </p>
            </div>
            <form class="mt-12 sm:mx-auto sm:max-w-lg sm:flex" action="/subscribers" accept-charset="UTF-8" method="post"><input type="hidden" name="authenticity_token" value="Fcmetzzxva8ViiOQ5HN5BZEuvhTJChNqsjGRo10A591RBURfLP1FU5CfebhL2uxPo8Q9WKUhcQ7qa0d1HoLmMQ" autocomplete="off" />
              <div class="confirm_email_1686110024"><style media="screen">.confirm_email_1686110024 {position:absolute!important;top:-9999px;left:-9999px;}</style><label for="subscriber_confirm_email">If you are a human, ignore this field</label><input type="text" name="subscriber[confirm_email]" id="subscriber_confirm_email" autocomplete="off" tabindex="-1" /><input type="hidden" name="spinner" id="spinner" value="cd8c82462d486f1c9aadaaeba6fa6dd4" autocomplete="off" /></div>
              <div class="min-w-0 flex-1">
                <label class="sr-only" for="subscriber_email">Email address</label>
                <input class="block w-full border border-transparent rounded-md px-5 py-3 text-base text-gray-900 placeholder-gray-500 shadow-sm focus:outline-none focus:border-transparent focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-teal-600" placeholder="Enter your email" type="email" name="subscriber[email]" id="subscriber_email" />
              </div>
              <div class="mt-4 sm:mt-0 sm:ml-3">
                <button type="submit" class="block w-full rounded-md border border-transparent px-5 py-3 bg-teal-500 text-base font-medium text-white shadow hover:bg-teal-400 focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-teal-600 sm:px-10">
                  Register
                </button>
              </div>
</form>          </div>
        </div>
      </div>
    </div>
  </div>
  <section
      id="faq"
      aria-labelledby="faq-title"
      class="relative overflow-hidden bg-slate-50 py-20 sm:py-32"
    >
    <h2 id="faq-title" class="sr-only">
      Frequently Asked Questions
    </h2>
    <div class="absolute top-0 left-1/2 -translate-x-[30%] -translate-y-[25%]">
    </div>
    <div class="relative mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
      <div class="mx-auto max-w-2xl lg:mx-0">
        <p class="font-display text-3xl tracking-tight text-slate-900 sm:text-4xl">
          Frequently Asked Questions
        </p>
        <p class="mt-4 text-lg tracking-tight text-slate-700">
          Still not convinced? Try reading over our frequently asked questions or <a class="text-teal-600 hover:text-teal-900" href="mailto:hello@bird.club">reach out to us directly</a> to learn more.
        </p>
      </div>
      <ul class="mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-8 lg:max-w-none lg:grid-cols-3">
        <li>
          <ul class="space-y-8">
            <li key={faqIndex}>
              <h3 class="font-display text-lg leading-7 text-slate-900">
                Why is BirdClub free?
              </h3>
              <p class="mt-4 text-sm text-slate-700">
                We are a non-profit organization driven by our purpose. We believe that bird clubs play an important role in birders? lives and local conservation. We want to help them thrive by providing them and their members with free access to our site.
              </p>
            </li>

            <li key={faqIndex}>
              <h3 class="font-display text-lg leading-7 text-slate-900">
                How is BirdClub financed?
              </h3>
              <p class="mt-4 text-sm text-slate-700">
                We rely on donations from our founders. In the future we will also allow clubs and individuals to make voluntary donations to BirdClub to help cover the cost of managing our site.
              </p>
            </li>

            <li key={faqIndex}>
              <h3 class="font-display text-lg leading-7 text-slate-900">
                Can anyone create a club?
              </h3>
              <p class="mt-4 text-sm text-slate-700">
                Yes. And not every club needs a president, secretary or treasurer! Some of our most active clubs are simply groups of friends who share a passion for birdwatching.
              </p>
            </li>
          </ul>
        </li>
        <li>
          <ul class="space-y-8">
            <li key={faqIndex}>
              <h3 class="font-display text-lg leading-7 text-slate-900">
                Why can?t I find my local club?
              </h3>
              <p class="mt-4 text-sm text-slate-700">
                Clubs are invite-only, your club admin will need to send you an invite to join. Alternatively, your club might not have been created - just <a class="text-teal-600 hover:text-teal-900" href="/clubs/new">share this link</a> with your club admin!
              </p>
            </li>

            <li key={faqIndex}>
              <h3 class="font-display text-lg leading-7 text-slate-900">
                Can anyone see my club page?
              </h3>
              <p class="mt-4 text-sm text-slate-700">
                No. Clubs are invite-only; only the people you ask to join can access your site.
              </p>
            </li>

            <li key={faqIndex}>
              <h3 class="font-display text-lg leading-7 text-slate-900">
                Is BirdClub only for UK birders?
              </h3>
              <p class="mt-4 text-sm text-slate-700">
                BirdClub was born in the UK, but we support international bird groups via the IOC World Bird List. If you?d like us to add a specific bird list for your country, just let us know!
              </p>
            </li>
          </ul>
        </li>

        <li>
          <ul class="space-y-8">
            <li key={faqIndex}>
              <h3 class="font-display text-lg leading-7 text-slate-900">
                Will you be releasing new features?
              </h3>
              <p class="mt-4 text-sm text-slate-700">
                Yes! We?re constantly working on new features to make running bird clubs as easy as possible. Future features will include a mobile app, online events for clubs and the ability to add trip lists.
              </p>
            </li>

            <li key={faqIndex}>
              <h3 class="font-display text-lg leading-7 text-slate-900">
                Did I see you at Global BirdFair?
              </h3>
              <p class="mt-4 text-sm text-slate-700">
                Yes! We were proud to officially launch BirdClub at the 2022 Global BirdFair and enjoyed speaking with hundreds of birders about how to take their bird club online.
              </p>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </section>
</main>

    <footer class="mt-8" aria-labelledby="footer-heading">
  <h2 id="footer-heading" class="sr-only">Footer</h2>
  <div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:py-12 lg:px-8">
    <div class="mt-8 border-t border-gray-200 pt-8 md:flex md:items-center md:justify-between">
      <div class="flex space-x-6 md:order-2">
        <a href="mailto:hello@bird.club" class="text-gray-400 hover:text-gray-900">Contact us</a>
      </div>
      <p class="mt-8 text-base text-gray-400 md:mt-0 md:order-1">&copy; 2023 BirdClub. All rights reserved.</p>
    </div>
  </div>
</footer>

  </body>
</html>
