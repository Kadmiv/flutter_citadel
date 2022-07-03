'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"index.html": "d3e2837e9afda85f69916c83d5342a2b",
"/": "d3e2837e9afda85f69916c83d5342a2b",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "3af8baf23243aa71f1a37aade71e2869",
"version.json": "7a7aca32423cf8c1504e09a774ed1149",
"assets/FontManifest.json": "c6fa750f52a5d3e6b22d30d041a75c84",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/AssetManifest.json": "ceee637044412b2829c01c42db7ce34b",
"assets/assets/data/delux/districts/library.jpeg": "739a26c96c5ecb3d6d955ecdca08ee3f",
"assets/assets/data/delux/districts/monastery.jpeg": "7deb97e64920a11515ad46385c644a9f",
"assets/assets/data/delux/districts/monument.jpeg": "5ff15e7db4e037c04ae4b4916d3bac7c",
"assets/assets/data/delux/districts/castle.jpeg": "5062b13891f9c2c8f21e5484020bd1e3",
"assets/assets/data/delux/districts/dragongate.jpeg": "ec9465d5e32c8589cdfc50e366bde3e9",
"assets/assets/data/delux/districts/market.jpeg": "a9ad6952bad5bd230ab717708f2a7e28",
"assets/assets/data/delux/districts/church.jpeg": "66c6fd7b53a34b19aac72beeacf12b15",
"assets/assets/data/delux/districts/quarry.jpeg": "ef4199dcb4d3de27dae1025b00280f5f",
"assets/assets/data/delux/districts/observatory.jpeg": "71e673e6a852e51f5745ce783faeac7f",
"assets/assets/data/delux/districts/statue.jpeg": "3a91ed1223027f3bcf74eec077fb912f",
"assets/assets/data/delux/districts/townhall.jpeg": "f8971abe9c8e778c271558d1615c9813",
"assets/assets/data/delux/districts/manor.jpeg": "30ea067e74cd34faa88e6937751e0ccf",
"assets/assets/data/delux/districts/harbor.jpeg": "dcfd425ebd8bbb228fda9e88ef03fbed",
"assets/assets/data/delux/districts/keep.jpeg": "ed7b0877a698d0044b7bde7c06df7961",
"assets/assets/data/delux/districts/armory.jpeg": "8cd4a51396c77331f276c2680d89d026",
"assets/assets/data/delux/districts/tradingpost.jpeg": "0abb4adec1960364b7aa15306bcc00f1",
"assets/assets/data/delux/districts/schoolofmagic.jpeg": "22e5882fc024e2696caf11cfe4a62100",
"assets/assets/data/delux/districts/museum.jpeg": "f9fd37e9cfbbdca292cfcc70e55231cd",
"assets/assets/data/delux/districts/fortress.jpeg": "495e0baa1f16008e69ceaf7196f6df24",
"assets/assets/data/delux/districts/framework.jpeg": "c084e4627ec71c187f6d1d435be0aa1c",
"assets/assets/data/delux/districts/ivorytower.jpeg": "2076a3211a5b6956db27ce60b4da6a7f",
"assets/assets/data/delux/districts/watchtower.jpeg": "e069351eb95c45b22ca92e4ed6c7d9a5",
"assets/assets/data/delux/districts/prison.jpeg": "04dca7c6d7cba2af00e65d11855be67d",
"assets/assets/data/delux/districts/palace.jpeg": "67157718241aaff047d3be57ae129fb5",
"assets/assets/data/delux/districts/imperialtreasury.jpeg": "b6e069a9b5d000708335054f72a605ca",
"assets/assets/data/delux/districts/basilica.jpeg": "7a802abf59c4366e0e66d5212ce9d043",
"assets/assets/data/delux/districts/theatre.jpeg": "e1a021770b46d5c9451907744574f8d2",
"assets/assets/data/delux/districts/cathedral.jpeg": "523e7b6e5f82ac5b3a80385af0cb036a",
"assets/assets/data/delux/districts/greatwall.jpeg": "04b1d5cda83d3ed0757aa934c0f6e862",
"assets/assets/data/delux/districts/hauntedquarter.jpeg": "33874f4f6635c4d21d96efb0fa174208",
"assets/assets/data/delux/districts/secretvault.jpeg": "a709720adcd224f0047c80c42213f03a",
"assets/assets/data/delux/districts/laboratory.jpeg": "9b49ae891dc92c783a6f09d626119992",
"assets/assets/data/delux/districts/stables.jpeg": "8351ea63785ec84e58413e33c7829aab",
"assets/assets/data/delux/districts/battlefield.jpeg": "d17aada9bb6efacd18d1b9e6f45747a4",
"assets/assets/data/delux/districts/docks.jpeg": "b83e0fbda551eeb4180248f191187851",
"assets/assets/data/delux/districts/poorhouse.jpeg": "1126c96a1de9a0c7287c435a8e1257f8",
"assets/assets/data/delux/districts/wishingwell.jpeg": "9b49a0a513ae312d4c13b6dc43e00738",
"assets/assets/data/delux/districts/factory.jpeg": "ee7b19f6a81cb42f9ba7e86a779b71cd",
"assets/assets/data/delux/districts/thievesden.jpeg": "5913ae3d226f74e3b922119f10f1cb5d",
"assets/assets/data/delux/districts/goldmine.jpeg": "33a12fa257dfa3c3cda352c237e22507",
"assets/assets/data/delux/districts/necropolis.jpeg": "946e7490d1e78c30b552a1f02365b055",
"assets/assets/data/delux/districts/capitol.jpeg": "c419e286e635a2d466333c6cb1a2112d",
"assets/assets/data/delux/districts/smithy.jpeg": "29bcedebed558d7f7084d062f1aadccb",
"assets/assets/data/delux/districts/temple.jpeg": "6205918216f775545858a16fd5849778",
"assets/assets/data/delux/districts/maproom.jpeg": "8b938f13d7baf3a9f1a98f85cb262de6",
"assets/assets/data/delux/districts/tavern.jpeg": "fb982aaadc854b65ae2e9c18d5d81c0d",
"assets/assets/data/delux/districts/park.jpeg": "0995bd59011a441978ccba33d2dda924",
"assets/assets/data/delux/heroes/witch.jpeg": "31f0d16f9fbdb9f4bdfc7dbfcad12704",
"assets/assets/data/delux/heroes/architect.jpeg": "58f61aa8217e004fe4433e8df3191475",
"assets/assets/data/delux/heroes/seer.jpeg": "5af5f04c75e5417b60c4e357d616553f",
"assets/assets/data/delux/heroes/spy.jpeg": "7ef42195faca4e151e7e9a2777603256",
"assets/assets/data/delux/heroes/wizard.jpeg": "d5251021f1c646aad9e67a5b17f145cc",
"assets/assets/data/delux/heroes/queen.jpeg": "c6322672a97935aedb6c52f054e73832",
"assets/assets/data/delux/heroes/diplomat.jpeg": "101c544f1c3c3a8a81c8e1e2593a2a46",
"assets/assets/data/delux/heroes/assassin.jpeg": "ba413f4daa1dd301489195da40417937",
"assets/assets/data/delux/heroes/abbot.jpeg": "6fe1e54bff2cf9a7bb15749ecb6b07b2",
"assets/assets/data/delux/heroes/merchant.jpeg": "08872e06c3bd7db011e3c41c84d6002e",
"assets/assets/data/delux/heroes/marshal.jpeg": "d9806ee38e6df18130ddd390065dc993",
"assets/assets/data/delux/heroes/alchemist.jpeg": "d766201c7504da95f1cb345826924932",
"assets/assets/data/delux/heroes/cardinal.jpeg": "badb2f1b87b5a3d061f2157155d01230",
"assets/assets/data/delux/heroes/patrician.jpeg": "bd9ac90d82ec070ede65097f9bfeb1fe",
"assets/assets/data/delux/heroes/magistrate.jpeg": "525c8f101fc3da72f2419e0ed048665d",
"assets/assets/data/delux/heroes/scholar.jpeg": "4c33597b2a6d831156322d18aedb4604",
"assets/assets/data/delux/heroes/navigator.jpeg": "67936ffe599bf0cc7926d3554c65c89f",
"assets/assets/data/delux/heroes/magician.jpeg": "ba580c09e15105ff9bf2b3ecb8ff0ca8",
"assets/assets/data/delux/heroes/artist.jpeg": "13d48eae75d3790c4cfc78c9403dc417",
"assets/assets/data/delux/heroes/thief.jpeg": "f5f2d13078094e4fe1833da16cbf2178",
"assets/assets/data/delux/heroes/bishop.jpeg": "842c186621e1a6b0732636bc11281c48",
"assets/assets/data/delux/heroes/king.jpeg": "b7ab2772abfe8a553fdd39b517c968cd",
"assets/assets/data/delux/heroes/trader.jpeg": "a57f20db149e8ad0287b6357b4c3b027",
"assets/assets/data/delux/heroes/emperor.jpeg": "7ad06deaeb13561baf2beb1e0fd476a1",
"assets/assets/data/delux/heroes/warlord.jpeg": "56c02d3578c29ce54e1d2b7eb975a2d5",
"assets/assets/data/delux/heroes/taxcollector.jpeg": "5d4987788a0fc283a6a0ccd5cb717682",
"assets/assets/data/delux/heroes/blackmailer.jpeg": "32d9db7345f5a3ec7d5cbe036c44ec44",
"assets/assets/data/classic/districts/dragongate.png": "84fbc9004cea574f5f27835c5a0fe12b",
"assets/assets/data/classic/districts/market.png": "5404f8be58647730139896dfb693ec7c",
"assets/assets/data/classic/districts/temple.png": "8c0ec47e6e387cd3f65a4c9243dd62d9",
"assets/assets/data/classic/districts/observatory.png": "fabd45a9771899bc6269d885b82bcf74",
"assets/assets/data/classic/districts/tradingpost.png": "2e8015421bacdfbcf143f63d799938d0",
"assets/assets/data/classic/districts/keep.png": "81810ab6147df78ba767c19ba87d8ac2",
"assets/assets/data/classic/districts/battlefield.png": "e6527c1ab6e8d3d25b28da1673e9e753",
"assets/assets/data/classic/districts/data.json": "be1ad5afb840e37573d9498feddc23dd",
"assets/assets/data/classic/districts/docks.png": "a379d0e7978d5e6906d12e4cc16c686c",
"assets/assets/data/classic/districts/smithy.png": "7d4c2536f31ab7577a2468b2848ae12e",
"assets/assets/data/classic/districts/townhall.png": "4973533bb688e8d247e2c32d02a157d1",
"assets/assets/data/classic/districts/monastery.png": "ad67d4638f6f202de55e0c144dab7195",
"assets/assets/data/classic/districts/graveyard.png": "feddbbb0d3be2cc7d6c3c847e3d37c60",
"assets/assets/data/classic/districts/laboratory.png": "a0a21055981d2bedab65270e2914c134",
"assets/assets/data/classic/districts/watchtower.png": "5eabf736daa48f41a8d238c36118e783",
"assets/assets/data/classic/districts/cathedral.png": "5a30c77b1c90fc6e88fc503ee07de5dc",
"assets/assets/data/classic/districts/church.png": "90b3c93a704c93374b051670ff70da4a",
"assets/assets/data/classic/districts/library.png": "9da6e8d4805bff9b8af102738bbaeb3e",
"assets/assets/data/classic/districts/palace.png": "ecaa05b8bcd48979ea0f6d709d6eb250",
"assets/assets/data/classic/districts/fortress.png": "2d56fab6abf95db0c0eb13e53d027ff6",
"assets/assets/data/classic/districts/manor.png": "15e2a3c042f15febd33befe35f4e8492",
"assets/assets/data/classic/districts/greatwall.png": "411804a72d83166ed0af0cd1b41ff511",
"assets/assets/data/classic/districts/castle.png": "e28460f99b81e6d470372dbfb757e553",
"assets/assets/data/classic/districts/schoolofmagic.png": "af5746e2c2dc1c54ebacfcb8e15eeb8d",
"assets/assets/data/classic/districts/hauntedcity.png": "f359143cfa6951bfcd374a4931a436a9",
"assets/assets/data/classic/districts/tavern.png": "abeb24798b6de102cfd6ac4d939496e3",
"assets/assets/data/classic/districts/harbor.png": "27ce507f6dcc16a99d1e8c23ea742a20",
"assets/assets/data/classic/districts/prison.png": "cafe07803c92d8436c75da104a05a123",
"assets/assets/data/classic/districts/university.png": "280edf593fb52b11456987ce4be95ae9",
"assets/assets/data/classic/heroes/data.json": "af6e467afd4e588372f28d22c35fa0e4",
"assets/assets/data/classic/heroes/assassin.png": "42018c7632afd5d64cd077306c976351",
"assets/assets/data/classic/heroes/magician.png": "1c628147d10332df6ba7081b0ec68992",
"assets/assets/data/classic/heroes/bishop.png": "cc4146dafb89c31ec840a7efbd29721b",
"assets/assets/data/classic/heroes/king.png": "9f8fa587c4763afd19b80db7e7ce7c39",
"assets/assets/data/classic/heroes/architect.png": "93f801a5027c254ed35bc2251c1b2da6",
"assets/assets/data/classic/heroes/warlord.png": "bdd0880cf02806a3c625ca93b3fc856b",
"assets/assets/data/classic/heroes/thief.png": "46307a4b2f5e6dc6aa4b36df78818c03",
"assets/assets/data/classic/heroes/merchant.png": "b899db00d2991f7dd977b70f92425551",
"assets/assets/icons/crow.svg": "71025169ebf158e37f29273f3d984127",
"assets/assets/icons/coin.svg": "f6a150d6715e3f41ee8db3bb20f57c04",
"assets/assets/messages.json": "e0ff5f143fdf0af5af8355f542a072cb",
"assets/packages/golden_toolkit/fonts/Roboto-Regular.ttf": "ac3f799d5bbaf5196fab15ab8de8431c",
"assets/packages/flutter_chat_ui/assets/icon-delivered.png": "b064b7cf3e436d196193258848eae910",
"assets/packages/flutter_chat_ui/assets/icon-document.png": "b4477562d9152716c062b6018805d10b",
"assets/packages/flutter_chat_ui/assets/icon-seen.png": "b9d597e29ff2802fd7e74c5086dfb106",
"assets/packages/flutter_chat_ui/assets/icon-attachment.png": "17fc0472816ace725b2411c7e1450cdd",
"assets/packages/flutter_chat_ui/assets/icon-send.png": "34e43bc8840ecb609e14d622569cda6a",
"assets/packages/flutter_chat_ui/assets/icon-error.png": "4fceef32b6b0fd8782c5298ee463ea56",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-delivered.png": "28f141c87a74838fc20082e9dea44436",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-document.png": "4578cb3d3f316ef952cd2cf52f003df2",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-seen.png": "684348b596f7960e59e95cff5475b2f8",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-attachment.png": "fcf6bfd600820e85f90a846af94783f4",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-send.png": "8e7e62d5bc4a0e37e3f953fb8af23d97",
"assets/packages/flutter_chat_ui/assets/3.0x/icon-error.png": "872d7d57b8fff12c1a416867d6c1bc02",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-delivered.png": "b6b5d85c3270a5cad19b74651d78c507",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-document.png": "e61ec1c2da405db33bff22f774fb8307",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-seen.png": "10c256cc3c194125f8fffa25de5d6b8a",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-attachment.png": "9c8f255d58a0a4b634009e19d4f182fa",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-send.png": "2a7d5341fd021e6b75842f6dadb623dd",
"assets/packages/flutter_chat_ui/assets/2.0x/icon-error.png": "5a59dc97f28a33691ff92d0a128c2b7f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_neumorphic/fonts/NeumorphicIcons.ttf": "32be0c4c86773ba5c9f7791e69964585",
"assets/NOTICES": "75c6f273e6ddc3ff9ed6ab99d87db8d7",
"main.dart.js": "960e51e804495aaa2598913f06b603d5"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
