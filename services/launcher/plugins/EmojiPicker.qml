pragma Singleton

import QtQuick
import Quickshell.Io
import "../../launcher"

Plugin {
    id: root
    name: "Emoji Picker"
    description: "Search and copy emojis"
    prefixes: ["emoji", "e"]

    property var emojis: [
        // Smileys & Emotion
        {
            emoji: "😀",
            name: "grinning face",
            keywords: ["happy", "smile", "grin"]
        },
        {
            emoji: "😃",
            name: "grinning face with big eyes",
            keywords: ["happy", "smile", "joy"]
        },
        {
            emoji: "😄",
            name: "grinning face with smiling eyes",
            keywords: ["happy", "smile", "joy"]
        },
        {
            emoji: "😁",
            name: "beaming face with smiling eyes",
            keywords: ["happy", "smile", "grin"]
        },
        {
            emoji: "😆",
            name: "grinning squinting face",
            keywords: ["happy", "laugh", "haha"]
        },
        {
            emoji: "😅",
            name: "grinning face with sweat",
            keywords: ["happy", "sweat", "relief"]
        },
        {
            emoji: "🤣",
            name: "rolling on the floor laughing",
            keywords: ["laugh", "lol", "rofl"]
        },
        {
            emoji: "😂",
            name: "face with tears of joy",
            keywords: ["laugh", "cry", "joy"]
        },
        {
            emoji: "🙂",
            name: "slightly smiling face",
            keywords: ["smile", "happy"]
        },
        {
            emoji: "🙃",
            name: "upside-down face",
            keywords: ["silly", "sarcasm"]
        },
        {
            emoji: "😉",
            name: "winking face",
            keywords: ["wink", "flirt"]
        },
        {
            emoji: "😊",
            name: "smiling face with smiling eyes",
            keywords: ["happy", "blush"]
        },
        {
            emoji: "😇",
            name: "smiling face with halo",
            keywords: ["angel", "innocent"]
        },
        {
            emoji: "🥰",
            name: "smiling face with hearts",
            keywords: ["love", "adore"]
        },
        {
            emoji: "😍",
            name: "smiling face with heart-eyes",
            keywords: ["love", "crush"]
        },
        {
            emoji: "🤩",
            name: "star-struck",
            keywords: ["wow", "amazing"]
        },
        {
            emoji: "😘",
            name: "face blowing a kiss",
            keywords: ["kiss", "love"]
        },
        {
            emoji: "😗",
            name: "kissing face",
            keywords: ["kiss"]
        },
        {
            emoji: "☺️",
            name: "smiling face",
            keywords: ["happy", "smile"]
        },
        {
            emoji: "😚",
            name: "kissing face with closed eyes",
            keywords: ["kiss"]
        },
        {
            emoji: "😙",
            name: "kissing face with smiling eyes",
            keywords: ["kiss"]
        },
        {
            emoji: "🥲",
            name: "smiling face with tear",
            keywords: ["happy", "cry", "touched"]
        },
        {
            emoji: "😋",
            name: "face savoring food",
            keywords: ["yum", "delicious", "tongue"]
        },
        {
            emoji: "😛",
            name: "face with tongue",
            keywords: ["tongue", "silly"]
        },
        {
            emoji: "😜",
            name: "winking face with tongue",
            keywords: ["tongue", "wink", "silly"]
        },
        {
            emoji: "🤪",
            name: "zany face",
            keywords: ["crazy", "silly"]
        },
        {
            emoji: "😝",
            name: "squinting face with tongue",
            keywords: ["tongue", "silly"]
        },
        {
            emoji: "🤑",
            name: "money-mouth face",
            keywords: ["money", "rich"]
        },
        {
            emoji: "🤗",
            name: "hugging face",
            keywords: ["hug", "embrace"]
        },
        {
            emoji: "🤭",
            name: "face with hand over mouth",
            keywords: ["oops", "secret"]
        },
        {
            emoji: "🤫",
            name: "shushing face",
            keywords: ["quiet", "secret", "shh"]
        },
        {
            emoji: "🤔",
            name: "thinking face",
            keywords: ["think", "hmm"]
        },
        {
            emoji: "🤐",
            name: "zipper-mouth face",
            keywords: ["quiet", "secret"]
        },
        {
            emoji: "🤨",
            name: "face with raised eyebrow",
            keywords: ["suspicious", "skeptical"]
        },
        {
            emoji: "😐",
            name: "neutral face",
            keywords: ["neutral", "meh"]
        },
        {
            emoji: "😑",
            name: "expressionless face",
            keywords: ["blank", "meh"]
        },
        {
            emoji: "😶",
            name: "face without mouth",
            keywords: ["quiet", "speechless"]
        },
        {
            emoji: "😏",
            name: "smirking face",
            keywords: ["smirk", "smug"]
        },
        {
            emoji: "😒",
            name: "unamused face",
            keywords: ["annoyed", "meh"]
        },
        {
            emoji: "🙄",
            name: "face with rolling eyes",
            keywords: ["eye roll", "annoyed"]
        },
        {
            emoji: "😬",
            name: "grimacing face",
            keywords: ["awkward", "oops"]
        },
        {
            emoji: "🤥",
            name: "lying face",
            keywords: ["lie", "pinocchio"]
        },
        {
            emoji: "😔",
            name: "pensive face",
            keywords: ["sad", "thoughtful"]
        },
        {
            emoji: "😪",
            name: "sleepy face",
            keywords: ["tired", "sleepy"]
        },
        {
            emoji: "🤤",
            name: "drooling face",
            keywords: ["drool", "sleep"]
        },
        {
            emoji: "😴",
            name: "sleeping face",
            keywords: ["sleep", "zzz"]
        },
        {
            emoji: "😷",
            name: "face with medical mask",
            keywords: ["sick", "mask", "covid"]
        },
        {
            emoji: "🤒",
            name: "face with thermometer",
            keywords: ["sick", "fever"]
        },
        {
            emoji: "🤕",
            name: "face with head-bandage",
            keywords: ["hurt", "injured"]
        },
        {
            emoji: "🤢",
            name: "nauseated face",
            keywords: ["sick", "gross"]
        },
        {
            emoji: "🤮",
            name: "face vomiting",
            keywords: ["sick", "puke"]
        },
        {
            emoji: "🤧",
            name: "sneezing face",
            keywords: ["sick", "sneeze"]
        },
        {
            emoji: "🥵",
            name: "hot face",
            keywords: ["hot", "sweat"]
        },
        {
            emoji: "🫠",
            name: "melting face",
            keywords: ["melting", "hot", "dissolve", "liquid"]
        },
        {
            emoji: "🥶",
            name: "cold face",
            keywords: ["cold", "freeze"]
        },
        {
            emoji: "🥴",
            name: "woozy face",
            keywords: ["dizzy", "drunk"]
        },
        {
            emoji: "😵",
            name: "dizzy face",
            keywords: ["dizzy", "confused"]
        },
        {
            emoji: "🤯",
            name: "exploding head",
            keywords: ["mind blown", "wow"]
        },
        {
            emoji: "🤠",
            name: "cowboy hat face",
            keywords: ["cowboy", "hat"]
        },
        {
            emoji: "🥳",
            name: "partying face",
            keywords: ["party", "celebrate"]
        },
        {
            emoji: "🥸",
            name: "disguised face",
            keywords: ["disguise", "glasses"]
        },
        {
            emoji: "😎",
            name: "smiling face with sunglasses",
            keywords: ["cool", "sunglasses"]
        },
        {
            emoji: "🤓",
            name: "nerd face",
            keywords: ["nerd", "glasses", "smart"]
        },
        {
            emoji: "🧐",
            name: "face with monocle",
            keywords: ["fancy", "monocle"]
        },
        {
            emoji: "😕",
            name: "confused face",
            keywords: ["confused", "sad"]
        },
        {
            emoji: "😟",
            name: "worried face",
            keywords: ["worried", "sad"]
        },
        {
            emoji: "🙁",
            name: "slightly frowning face",
            keywords: ["sad", "frown"]
        },
        {
            emoji: "☹️",
            name: "frowning face",
            keywords: ["sad", "frown"]
        },
        {
            emoji: "😮",
            name: "face with open mouth",
            keywords: ["surprised", "wow"]
        },
        {
            emoji: "😯",
            name: "hushed face",
            keywords: ["surprised", "quiet"]
        },
        {
            emoji: "😲",
            name: "astonished face",
            keywords: ["surprised", "shocked"]
        },
        {
            emoji: "😳",
            name: "flushed face",
            keywords: ["embarrassed", "blush"]
        },
        {
            emoji: "🥺",
            name: "pleading face",
            keywords: ["puppy eyes", "please"]
        },
        {
            emoji: "😦",
            name: "frowning face with open mouth",
            keywords: ["sad", "surprised"]
        },
        {
            emoji: "😧",
            name: "anguished face",
            keywords: ["sad", "worried"]
        },
        {
            emoji: "😨",
            name: "fearful face",
            keywords: ["scared", "fear"]
        },
        {
            emoji: "😰",
            name: "anxious face with sweat",
            keywords: ["anxious", "worried"]
        },
        {
            emoji: "😥",
            name: "sad but relieved face",
            keywords: ["sad", "relief"]
        },
        {
            emoji: "😢",
            name: "crying face",
            keywords: ["cry", "sad", "tear"]
        },
        {
            emoji: "😭",
            name: "loudly crying face",
            keywords: ["cry", "sob", "sad"]
        },
        {
            emoji: "😱",
            name: "face screaming in fear",
            keywords: ["scared", "scream"]
        },
        {
            emoji: "😖",
            name: "confounded face",
            keywords: ["frustrated", "confused"]
        },
        {
            emoji: "😣",
            name: "persevering face",
            keywords: ["struggle", "effort"]
        },
        {
            emoji: "😞",
            name: "disappointed face",
            keywords: ["sad", "disappointed"]
        },
        {
            emoji: "😓",
            name: "downcast face with sweat",
            keywords: ["sad", "sweat"]
        },
        {
            emoji: "😩",
            name: "weary face",
            keywords: ["tired", "frustrated"]
        },
        {
            emoji: "😫",
            name: "tired face",
            keywords: ["tired", "exhausted"]
        },
        {
            emoji: "🥱",
            name: "yawning face",
            keywords: ["tired", "yawn", "sleepy"]
        },
        {
            emoji: "😤",
            name: "face with steam from nose",
            keywords: ["angry", "frustrated"]
        },
        {
            emoji: "😡",
            name: "pouting face",
            keywords: ["angry", "mad"]
        },
        {
            emoji: "😠",
            name: "angry face",
            keywords: ["angry", "mad"]
        },
        {
            emoji: "🤬",
            name: "face with symbols on mouth",
            keywords: ["angry", "swear"]
        },
        {
            emoji: "😈",
            name: "smiling face with horns",
            keywords: ["devil", "evil"]
        },
        {
            emoji: "👿",
            name: "angry face with horns",
            keywords: ["devil", "angry"]
        },
        {
            emoji: "💀",
            name: "skull",
            keywords: ["death", "dead"]
        },
        {
            emoji: "☠️",
            name: "skull and crossbones",
            keywords: ["death", "danger"]
        },

        // Hand gestures
        {
            emoji: "👍",
            name: "thumbs up",
            keywords: ["good", "yes", "like", "approve"]
        },
        {
            emoji: "👎",
            name: "thumbs down",
            keywords: ["bad", "no", "dislike"]
        },
        {
            emoji: "👌",
            name: "OK hand",
            keywords: ["ok", "good", "perfect"]
        },
        {
            emoji: "✌️",
            name: "victory hand",
            keywords: ["peace", "victory", "two"]
        },
        {
            emoji: "🤞",
            name: "crossed fingers",
            keywords: ["luck", "hope", "wish"]
        },
        {
            emoji: "🤟",
            name: "love-you gesture",
            keywords: ["love", "rock"]
        },
        {
            emoji: "🤘",
            name: "sign of the horns",
            keywords: ["rock", "metal"]
        },
        {
            emoji: "🤙",
            name: "call me hand",
            keywords: ["call", "phone", "hang loose"]
        },
        {
            emoji: "👈",
            name: "backhand index pointing left",
            keywords: ["left", "point"]
        },
        {
            emoji: "👉",
            name: "backhand index pointing right",
            keywords: ["right", "point"]
        },
        {
            emoji: "👆",
            name: "backhand index pointing up",
            keywords: ["up", "point"]
        },
        {
            emoji: "👇",
            name: "backhand index pointing down",
            keywords: ["down", "point"]
        },
        {
            emoji: "☝️",
            name: "index pointing up",
            keywords: ["up", "point", "one"]
        },
        {
            emoji: "✋",
            name: "raised hand",
            keywords: ["stop", "high five", "hand"]
        },
        {
            emoji: "🤚",
            name: "raised back of hand",
            keywords: ["stop", "hand"]
        },
        {
            emoji: "🖐️",
            name: "hand with fingers splayed",
            keywords: ["hand", "five"]
        },
        {
            emoji: "🖖",
            name: "vulcan salute",
            keywords: ["spock", "star trek"]
        },
        {
            emoji: "👋",
            name: "waving hand",
            keywords: ["wave", "hello", "goodbye"]
        },
        {
            emoji: "🤏",
            name: "pinching hand",
            keywords: ["small", "tiny", "pinch"]
        },
        {
            emoji: "✊",
            name: "raised fist",
            keywords: ["fist", "power"]
        },
        {
            emoji: "👊",
            name: "oncoming fist",
            keywords: ["fist", "punch"]
        },
        {
            emoji: "🤛",
            name: "left-facing fist",
            keywords: ["fist", "bump"]
        },
        {
            emoji: "🤜",
            name: "right-facing fist",
            keywords: ["fist", "bump"]
        },
        {
            emoji: "👏",
            name: "clapping hands",
            keywords: ["clap", "applause", "good job"]
        },
        {
            emoji: "🙌",
            name: "raising hands",
            keywords: ["celebrate", "praise", "hooray"]
        },
        {
            emoji: "👐",
            name: "open hands",
            keywords: ["hug", "open"]
        },
        {
            emoji: "🤲",
            name: "palms up together",
            keywords: ["pray", "please"]
        },
        {
            emoji: "🤝",
            name: "handshake",
            keywords: ["deal", "agreement", "shake"]
        },
        {
            emoji: "🙏",
            name: "folded hands",
            keywords: ["pray", "thanks", "please"]
        },

        // Hearts & Love
        {
            emoji: "❤️",
            name: "red heart",
            keywords: ["love", "heart", "red"]
        },
        {
            emoji: "🧡",
            name: "orange heart",
            keywords: ["love", "heart", "orange"]
        },
        {
            emoji: "💛",
            name: "yellow heart",
            keywords: ["love", "heart", "yellow"]
        },
        {
            emoji: "💚",
            name: "green heart",
            keywords: ["love", "heart", "green"]
        },
        {
            emoji: "💙",
            name: "blue heart",
            keywords: ["love", "heart", "blue"]
        },
        {
            emoji: "💜",
            name: "purple heart",
            keywords: ["love", "heart", "purple"]
        },
        {
            emoji: "🖤",
            name: "black heart",
            keywords: ["love", "heart", "black"]
        },
        {
            emoji: "🤍",
            name: "white heart",
            keywords: ["love", "heart", "white"]
        },
        {
            emoji: "🤎",
            name: "brown heart",
            keywords: ["love", "heart", "brown"]
        },
        {
            emoji: "💔",
            name: "broken heart",
            keywords: ["heartbreak", "sad", "broken"]
        },
        {
            emoji: "❣️",
            name: "heart exclamation",
            keywords: ["love", "heart"]
        },
        {
            emoji: "💕",
            name: "two hearts",
            keywords: ["love", "hearts"]
        },
        {
            emoji: "💞",
            name: "revolving hearts",
            keywords: ["love", "hearts"]
        },
        {
            emoji: "💓",
            name: "beating heart",
            keywords: ["love", "heartbeat"]
        },
        {
            emoji: "💗",
            name: "growing heart",
            keywords: ["love", "growing"]
        },
        {
            emoji: "💖",
            name: "sparkling heart",
            keywords: ["love", "sparkle"]
        },
        {
            emoji: "💘",
            name: "heart with arrow",
            keywords: ["love", "cupid"]
        },
        {
            emoji: "💝",
            name: "heart with ribbon",
            keywords: ["love", "gift"]
        },
        {
            emoji: "💟",
            name: "heart decoration",
            keywords: ["love", "heart"]
        },

        // Common objects & symbols
        {
            emoji: "🔥",
            name: "fire",
            keywords: ["fire", "hot", "lit"]
        },
        {
            emoji: "💯",
            name: "hundred points",
            keywords: ["100", "perfect", "score"]
        },
        {
            emoji: "💢",
            name: "anger symbol",
            keywords: ["angry", "mad"]
        },
        {
            emoji: "💨",
            name: "dashing away",
            keywords: ["fast", "wind", "gone"]
        },
        {
            emoji: "💫",
            name: "dizzy",
            keywords: ["dizzy", "stars"]
        },
        {
            emoji: "💦",
            name: "sweat droplets",
            keywords: ["sweat", "water"]
        },
        {
            emoji: "💤",
            name: "zzz",
            keywords: ["sleep", "tired"]
        },
        {
            emoji: "⭐",
            name: "star",
            keywords: ["star", "favorite"]
        },
        {
            emoji: "🌟",
            name: "glowing star",
            keywords: ["star", "sparkle"]
        },
        {
            emoji: "✨",
            name: "sparkles",
            keywords: ["sparkle", "magic"]
        },
        {
            emoji: "⚡",
            name: "high voltage",
            keywords: ["lightning", "electric", "fast"]
        },
        {
            emoji: "☀️",
            name: "sun",
            keywords: ["sun", "sunny", "bright"]
        },
        {
            emoji: "🌙",
            name: "crescent moon",
            keywords: ["moon", "night"]
        },
        {
            emoji: "🌈",
            name: "rainbow",
            keywords: ["rainbow", "colorful", "pride"]
        },
        {
            emoji: "☁️",
            name: "cloud",
            keywords: ["cloud", "weather"]
        },
        {
            emoji: "⛅",
            name: "sun behind cloud",
            keywords: ["cloudy", "weather"]
        },
        {
            emoji: "🌊",
            name: "water wave",
            keywords: ["wave", "ocean", "water"]
        },
        {
            emoji: "🎉",
            name: "party popper",
            keywords: ["party", "celebrate", "confetti"]
        },
        {
            emoji: "🎊",
            name: "confetti ball",
            keywords: ["party", "celebrate", "confetti"]
        },
        {
            emoji: "🎈",
            name: "balloon",
            keywords: ["party", "balloon", "celebrate"]
        },
        {
            emoji: "🎁",
            name: "wrapped gift",
            keywords: ["gift", "present", "birthday"]
        },
        {
            emoji: "🎂",
            name: "birthday cake",
            keywords: ["cake", "birthday", "celebrate"]
        },
        {
            emoji: "🍰",
            name: "shortcake",
            keywords: ["cake", "dessert", "sweet"]
        },

        // Food & Drink
        {
            emoji: "🍕",
            name: "pizza",
            keywords: ["pizza", "food", "italian"]
        },
        {
            emoji: "🍔",
            name: "hamburger",
            keywords: ["burger", "food", "fast food"]
        },
        {
            emoji: "🍟",
            name: "french fries",
            keywords: ["fries", "food", "fast food"]
        },
        {
            emoji: "🌭",
            name: "hot dog",
            keywords: ["hot dog", "food"]
        },
        {
            emoji: "🥪",
            name: "sandwich",
            keywords: ["sandwich", "food"]
        },
        {
            emoji: "🌮",
            name: "taco",
            keywords: ["taco", "food", "mexican"]
        },
        {
            emoji: "🌯",
            name: "burrito",
            keywords: ["burrito", "food", "mexican"]
        },
        {
            emoji: "🥗",
            name: "green salad",
            keywords: ["salad", "healthy", "food"]
        },
        {
            emoji: "🍝",
            name: "spaghetti",
            keywords: ["pasta", "spaghetti", "italian"]
        },
        {
            emoji: "🍜",
            name: "steaming bowl",
            keywords: ["ramen", "soup", "noodles"]
        },
        {
            emoji: "🍲",
            name: "pot of food",
            keywords: ["stew", "soup", "food"]
        },
        {
            emoji: "🍱",
            name: "bento box",
            keywords: ["bento", "japanese", "food"]
        },
        {
            emoji: "🍣",
            name: "sushi",
            keywords: ["sushi", "japanese", "food"]
        },
        {
            emoji: "🍤",
            name: "fried shrimp",
            keywords: ["shrimp", "seafood", "food"]
        },
        {
            emoji: "🍙",
            name: "rice ball",
            keywords: ["rice", "japanese", "food"]
        },
        {
            emoji: "🍘",
            name: "rice cracker",
            keywords: ["rice", "cracker", "snack"]
        },
        {
            emoji: "🍡",
            name: "dango",
            keywords: ["dango", "japanese", "sweet"]
        },
        {
            emoji: "🥟",
            name: "dumpling",
            keywords: ["dumpling", "food", "chinese"]
        },
        {
            emoji: "🥠",
            name: "fortune cookie",
            keywords: ["fortune", "cookie", "chinese"]
        },
        {
            emoji: "🥡",
            name: "takeout box",
            keywords: ["takeout", "chinese", "food"]
        },
        {
            emoji: "🦀",
            name: "crab",
            keywords: ["crab", "seafood"]
        },
        {
            emoji: "🦞",
            name: "lobster",
            keywords: ["lobster", "seafood"]
        },
        {
            emoji: "🦐",
            name: "shrimp",
            keywords: ["shrimp", "seafood"]
        },
        {
            emoji: "🦑",
            name: "squid",
            keywords: ["squid", "seafood"]
        },
        {
            emoji: "🐙",
            name: "octopus",
            keywords: ["octopus", "seafood"]
        },
        {
            emoji: "🍎",
            name: "red apple",
            keywords: ["apple", "fruit", "red"]
        },
        {
            emoji: "🍊",
            name: "tangerine",
            keywords: ["orange", "fruit", "citrus"]
        },
        {
            emoji: "🍋",
            name: "lemon",
            keywords: ["lemon", "fruit", "citrus", "sour"]
        },
        {
            emoji: "🍌",
            name: "banana",
            keywords: ["banana", "fruit", "yellow"]
        },
        {
            emoji: "🍉",
            name: "watermelon",
            keywords: ["watermelon", "fruit", "summer"]
        },
        {
            emoji: "🍇",
            name: "grapes",
            keywords: ["grapes", "fruit", "wine"]
        },
        {
            emoji: "🍓",
            name: "strawberry",
            keywords: ["strawberry", "fruit", "red"]
        },
        {
            emoji: "🫐",
            name: "blueberries",
            keywords: ["blueberry", "fruit", "blue"]
        },
        {
            emoji: "🍈",
            name: "melon",
            keywords: ["melon", "fruit"]
        },
        {
            emoji: "🍒",
            name: "cherries",
            keywords: ["cherry", "fruit", "red"]
        },
        {
            emoji: "🍑",
            name: "peach",
            keywords: ["peach", "fruit"]
        },
        {
            emoji: "🥭",
            name: "mango",
            keywords: ["mango", "fruit", "tropical"]
        },
        {
            emoji: "🍍",
            name: "pineapple",
            keywords: ["pineapple", "fruit", "tropical"]
        },
        {
            emoji: "🥥",
            name: "coconut",
            keywords: ["coconut", "fruit", "tropical"]
        },
        {
            emoji: "🥝",
            name: "kiwi fruit",
            keywords: ["kiwi", "fruit", "green"]
        },
        {
            emoji: "🍅",
            name: "tomato",
            keywords: ["tomato", "vegetable", "red"]
        },
        {
            emoji: "🍆",
            name: "eggplant",
            keywords: ["eggplant", "vegetable", "purple"]
        },
        {
            emoji: "🥑",
            name: "avocado",
            keywords: ["avocado", "fruit", "green"]
        },
        {
            emoji: "🥦",
            name: "broccoli",
            keywords: ["broccoli", "vegetable", "green"]
        },
        {
            emoji: "🥬",
            name: "leafy greens",
            keywords: ["lettuce", "vegetable", "green"]
        },
        {
            emoji: "🥒",
            name: "cucumber",
            keywords: ["cucumber", "vegetable", "green"]
        },
        {
            emoji: "🌶️",
            name: "hot pepper",
            keywords: ["pepper", "spicy", "hot"]
        },
        {
            emoji: "🫑",
            name: "bell pepper",
            keywords: ["pepper", "vegetable"]
        },
        {
            emoji: "🌽",
            name: "ear of corn",
            keywords: ["corn", "vegetable", "yellow"]
        },
        {
            emoji: "🥕",
            name: "carrot",
            keywords: ["carrot", "vegetable", "orange"]
        },
        {
            emoji: "🫒",
            name: "olive",
            keywords: ["olive", "fruit"]
        },
        {
            emoji: "🧄",
            name: "garlic",
            keywords: ["garlic", "vegetable"]
        },
        {
            emoji: "🧅",
            name: "onion",
            keywords: ["onion", "vegetable"]
        },
        {
            emoji: "🥔",
            name: "potato",
            keywords: ["potato", "vegetable"]
        },
        {
            emoji: "🍠",
            name: "roasted sweet potato",
            keywords: ["sweet potato", "vegetable"]
        },
        {
            emoji: "🥐",
            name: "croissant",
            keywords: ["croissant", "bread", "french"]
        },
        {
            emoji: "🥖",
            name: "baguette bread",
            keywords: ["baguette", "bread", "french"]
        },
        {
            emoji: "🍞",
            name: "bread",
            keywords: ["bread", "loaf"]
        },
        {
            emoji: "🥨",
            name: "pretzel",
            keywords: ["pretzel", "snack"]
        },
        {
            emoji: "🥯",
            name: "bagel",
            keywords: ["bagel", "bread"]
        },
        {
            emoji: "🥞",
            name: "pancakes",
            keywords: ["pancakes", "breakfast"]
        },
        {
            emoji: "🧇",
            name: "waffle",
            keywords: ["waffle", "breakfast"]
        },
        {
            emoji: "🧀",
            name: "cheese wedge",
            keywords: ["cheese", "dairy"]
        },
        {
            emoji: "🍖",
            name: "meat on bone",
            keywords: ["meat", "bone", "food"]
        },
        {
            emoji: "🍗",
            name: "poultry leg",
            keywords: ["chicken", "meat", "food"]
        },
        {
            emoji: "🥩",
            name: "cut of meat",
            keywords: ["steak", "meat", "food"]
        },
        {
            emoji: "🥓",
            name: "bacon",
            keywords: ["bacon", "meat", "breakfast"]
        },
        {
            emoji: "🍳",
            name: "cooking",
            keywords: ["egg", "cooking", "breakfast"]
        },
        {
            emoji: "🥚",
            name: "egg",
            keywords: ["egg", "food"]
        },
        {
            emoji: "🍼",
            name: "baby bottle",
            keywords: ["bottle", "baby", "milk"]
        },
        {
            emoji: "🥛",
            name: "glass of milk",
            keywords: ["milk", "drink", "glass"]
        },
        {
            emoji: "☕",
            name: "hot beverage",
            keywords: ["coffee", "tea", "hot", "drink"]
        },
        {
            emoji: "🫖",
            name: "teapot",
            keywords: ["tea", "pot"]
        },
        {
            emoji: "🍵",
            name: "teacup without handle",
            keywords: ["tea", "green tea", "drink"]
        },
        {
            emoji: "🍶",
            name: "sake",
            keywords: ["sake", "japanese", "drink"]
        },
        {
            emoji: "🍾",
            name: "bottle with popping cork",
            keywords: ["champagne", "celebrate", "drink"]
        },
        {
            emoji: "🍷",
            name: "wine glass",
            keywords: ["wine", "drink", "alcohol"]
        },
        {
            emoji: "🍸",
            name: "cocktail glass",
            keywords: ["cocktail", "drink", "alcohol"]
        },
        {
            emoji: "🍹",
            name: "tropical drink",
            keywords: ["cocktail", "tropical", "drink"]
        },
        {
            emoji: "🍺",
            name: "beer mug",
            keywords: ["beer", "drink", "alcohol"]
        },
        {
            emoji: "🍻",
            name: "clinking beer mugs",
            keywords: ["beer", "cheers", "drink"]
        },
        {
            emoji: "🥂",
            name: "clinking glasses",
            keywords: ["cheers", "celebrate", "drink"]
        },
        {
            emoji: "🥃",
            name: "tumbler glass",
            keywords: ["whiskey", "drink", "alcohol"]
        },
        {
            emoji: "🥤",
            name: "cup with straw",
            keywords: ["soda", "drink", "straw"]
        },
        {
            emoji: "🧋",
            name: "bubble tea",
            keywords: ["bubble tea", "boba", "drink"]
        },
        {
            emoji: "🧃",
            name: "beverage box",
            keywords: ["juice box", "drink"]
        },
        {
            emoji: "🧉",
            name: "mate",
            keywords: ["mate", "drink"]
        },
        {
            emoji: "🧊",
            name: "ice",
            keywords: ["ice", "cold"]
        },

        // Animals & Nature
        {
            emoji: "🐶",
            name: "dog face",
            keywords: ["dog", "puppy", "pet"]
        },
        {
            emoji: "🐱",
            name: "cat face",
            keywords: ["cat", "kitten", "pet"]
        },
        {
            emoji: "🐭",
            name: "mouse face",
            keywords: ["mouse", "animal"]
        },
        {
            emoji: "🐹",
            name: "hamster",
            keywords: ["hamster", "pet"]
        },
        {
            emoji: "🐰",
            name: "rabbit face",
            keywords: ["rabbit", "bunny", "easter"]
        },
        {
            emoji: "🦊",
            name: "fox",
            keywords: ["fox", "animal"]
        },
        {
            emoji: "🐻",
            name: "bear",
            keywords: ["bear", "animal"]
        },
        {
            emoji: "🐼",
            name: "panda",
            keywords: ["panda", "bear", "cute"]
        },
        {
            emoji: "🐨",
            name: "koala",
            keywords: ["koala", "australia"]
        },
        {
            emoji: "🐯",
            name: "tiger face",
            keywords: ["tiger", "animal"]
        },
        {
            emoji: "🦁",
            name: "lion",
            keywords: ["lion", "animal", "king"]
        },
        {
            emoji: "🐮",
            name: "cow face",
            keywords: ["cow", "animal", "moo"]
        },
        {
            emoji: "🐷",
            name: "pig face",
            keywords: ["pig", "animal"]
        },
        {
            emoji: "🐽",
            name: "pig nose",
            keywords: ["pig", "nose"]
        },
        {
            emoji: "🐸",
            name: "frog",
            keywords: ["frog", "animal"]
        },
        {
            emoji: "🐵",
            name: "monkey face",
            keywords: ["monkey", "animal"]
        },
        {
            emoji: "🙈",
            name: "see-no-evil monkey",
            keywords: ["monkey", "see no evil"]
        },
        {
            emoji: "🙉",
            name: "hear-no-evil monkey",
            keywords: ["monkey", "hear no evil"]
        },
        {
            emoji: "🙊",
            name: "speak-no-evil monkey",
            keywords: ["monkey", "speak no evil"]
        },
        {
            emoji: "🐒",
            name: "monkey",
            keywords: ["monkey", "animal"]
        },
        {
            emoji: "🐔",
            name: "chicken",
            keywords: ["chicken", "animal"]
        },
        {
            emoji: "🐧",
            name: "penguin",
            keywords: ["penguin", "animal", "cold"]
        },
        {
            emoji: "🐦",
            name: "bird",
            keywords: ["bird", "animal"]
        },
        {
            emoji: "🐤",
            name: "baby chick",
            keywords: ["chick", "baby", "bird"]
        },
        {
            emoji: "🐣",
            name: "hatching chick",
            keywords: ["chick", "hatching", "bird"]
        },
        {
            emoji: "🐥",
            name: "front-facing baby chick",
            keywords: ["chick", "baby", "bird"]
        },
        {
            emoji: "🦆",
            name: "duck",
            keywords: ["duck", "animal", "bird"]
        },
        {
            emoji: "🦅",
            name: "eagle",
            keywords: ["eagle", "bird", "america"]
        },
        {
            emoji: "🦉",
            name: "owl",
            keywords: ["owl", "bird", "wise"]
        },
        {
            emoji: "🦇",
            name: "bat",
            keywords: ["bat", "animal", "vampire"]
        },
        {
            emoji: "🐺",
            name: "wolf",
            keywords: ["wolf", "animal"]
        },
        {
            emoji: "🐗",
            name: "boar",
            keywords: ["boar", "pig", "animal"]
        },
        {
            emoji: "🐴",
            name: "horse face",
            keywords: ["horse", "animal"]
        },
        {
            emoji: "🦄",
            name: "unicorn",
            keywords: ["unicorn", "magical", "rainbow"]
        },
        {
            emoji: "🐝",
            name: "honeybee",
            keywords: ["bee", "honey", "buzz"]
        },
        {
            emoji: "🐛",
            name: "bug",
            keywords: ["bug", "insect"]
        },
        {
            emoji: "🦋",
            name: "butterfly",
            keywords: ["butterfly", "beautiful", "insect"]
        },
        {
            emoji: "🐌",
            name: "snail",
            keywords: ["snail", "slow"]
        },
        {
            emoji: "🐞",
            name: "lady beetle",
            keywords: ["ladybug", "insect", "lucky"]
        },
        {
            emoji: "🐜",
            name: "ant",
            keywords: ["ant", "insect", "work"]
        },
        {
            emoji: "🦟",
            name: "mosquito",
            keywords: ["mosquito", "insect", "bite"]
        },
        {
            emoji: "🕷️",
            name: "spider",
            keywords: ["spider", "insect", "web"]
        },
        {
            emoji: "🕸️",
            name: "spider web",
            keywords: ["web", "spider"]
        },
        {
            emoji: "🦂",
            name: "scorpion",
            keywords: ["scorpion", "dangerous"]
        },
        {
            emoji: "🐢",
            name: "turtle",
            keywords: ["turtle", "slow", "animal"]
        },
        {
            emoji: "🐍",
            name: "snake",
            keywords: ["snake", "animal"]
        },
        {
            emoji: "🦎",
            name: "lizard",
            keywords: ["lizard", "reptile"]
        },
        {
            emoji: "🦖",
            name: "T-Rex",
            keywords: ["dinosaur", "t-rex", "extinct"]
        },
        {
            emoji: "🦕",
            name: "sauropod",
            keywords: ["dinosaur", "long neck", "extinct"]
        },
        {
            emoji: "🐙",
            name: "octopus",
            keywords: ["octopus", "sea", "tentacles"]
        },
        {
            emoji: "🦑",
            name: "squid",
            keywords: ["squid", "sea"]
        },
        {
            emoji: "🦐",
            name: "shrimp",
            keywords: ["shrimp", "seafood"]
        },
        {
            emoji: "🦞",
            name: "lobster",
            keywords: ["lobster", "seafood"]
        },
        {
            emoji: "🦀",
            name: "crab",
            keywords: ["crab", "seafood"]
        },
        {
            emoji: "🐡",
            name: "blowfish",
            keywords: ["fish", "pufferfish", "sea"]
        },
        {
            emoji: "🐠",
            name: "tropical fish",
            keywords: ["fish", "tropical", "colorful"]
        },
        {
            emoji: "🐟",
            name: "fish",
            keywords: ["fish", "sea"]
        },
        {
            emoji: "🐬",
            name: "dolphin",
            keywords: ["dolphin", "smart", "sea"]
        },
        {
            emoji: "🐳",
            name: "spouting whale",
            keywords: ["whale", "big", "sea"]
        },
        {
            emoji: "🐋",
            name: "whale",
            keywords: ["whale", "big", "sea"]
        },
        {
            emoji: "🦈",
            name: "shark",
            keywords: ["shark", "dangerous", "sea"]
        },
        {
            emoji: "🐊",
            name: "crocodile",
            keywords: ["crocodile", "dangerous", "reptile"]
        },
        {
            emoji: "🐅",
            name: "tiger",
            keywords: ["tiger", "stripes", "animal"]
        },
        {
            emoji: "🐆",
            name: "leopard",
            keywords: ["leopard", "spots", "animal"]
        },
        {
            emoji: "🦓",
            name: "zebra",
            keywords: ["zebra", "stripes", "animal"]
        },
        {
            emoji: "🦍",
            name: "gorilla",
            keywords: ["gorilla", "strong", "ape"]
        },
        {
            emoji: "🦧",
            name: "orangutan",
            keywords: ["orangutan", "ape"]
        },
        {
            emoji: "🐘",
            name: "elephant",
            keywords: ["elephant", "big", "trunk"]
        },
        {
            emoji: "🦏",
            name: "rhinoceros",
            keywords: ["rhino", "horn", "animal"]
        },
        {
            emoji: "🦛",
            name: "hippopotamus",
            keywords: ["hippo", "big", "water"]
        },
        {
            emoji: "🐪",
            name: "camel",
            keywords: ["camel", "desert", "hump"]
        },
        {
            emoji: "🐫",
            name: "two-hump camel",
            keywords: ["camel", "desert", "humps"]
        },
        {
            emoji: "🦒",
            name: "giraffe",
            keywords: ["giraffe", "tall", "neck"]
        },
        {
            emoji: "🦘",
            name: "kangaroo",
            keywords: ["kangaroo", "australia", "hop"]
        },
        {
            emoji: "🐃",
            name: "water buffalo",
            keywords: ["buffalo", "animal"]
        },
        {
            emoji: "🐂",
            name: "ox",
            keywords: ["ox", "bull", "animal"]
        },
        {
            emoji: "🐄",
            name: "cow",
            keywords: ["cow", "milk", "moo"]
        },
        {
            emoji: "🐎",
            name: "horse",
            keywords: ["horse", "fast", "animal"]
        },
        {
            emoji: "🐖",
            name: "pig",
            keywords: ["pig", "animal"]
        },
        {
            emoji: "🐏",
            name: "ram",
            keywords: ["ram", "sheep", "horns"]
        },
        {
            emoji: "🐑",
            name: "ewe",
            keywords: ["sheep", "wool", "animal"]
        },
        {
            emoji: "🦙",
            name: "llama",
            keywords: ["llama", "animal"]
        },
        {
            emoji: "🐐",
            name: "goat",
            keywords: ["goat", "animal"]
        },
        {
            emoji: "🦌",
            name: "deer",
            keywords: ["deer", "antlers", "animal"]
        },
        {
            emoji: "🐕",
            name: "dog",
            keywords: ["dog", "pet", "loyal"]
        },
        {
            emoji: "🐩",
            name: "poodle",
            keywords: ["poodle", "dog", "fancy"]
        },
        {
            emoji: "🦮",
            name: "guide dog",
            keywords: ["guide dog", "service", "blind"]
        },
        {
            emoji: "🐕‍🦺",
            name: "service dog",
            keywords: ["service dog", "working"]
        },
        {
            emoji: "🐈",
            name: "cat",
            keywords: ["cat", "pet", "meow"]
        },
        {
            emoji: "🐈‍⬛",
            name: "black cat",
            keywords: ["black cat", "halloween"]
        },
        {
            emoji: "🐓",
            name: "rooster",
            keywords: ["rooster", "chicken", "morning"]
        },
        {
            emoji: "🦃",
            name: "turkey",
            keywords: ["turkey", "thanksgiving"]
        },
        {
            emoji: "🦚",
            name: "peacock",
            keywords: ["peacock", "beautiful", "feathers"]
        },
        {
            emoji: "🦜",
            name: "parrot",
            keywords: ["parrot", "colorful", "talk"]
        },
        {
            emoji: "🦢",
            name: "swan",
            keywords: ["swan", "elegant", "white"]
        },
        {
            emoji: "🦩",
            name: "flamingo",
            keywords: ["flamingo", "pink", "tropical"]
        },
        {
            emoji: "🕊️",
            name: "dove",
            keywords: ["dove", "peace", "white"]
        },
        {
            emoji: "🐇",
            name: "rabbit",
            keywords: ["rabbit", "bunny", "hop"]
        },
        {
            emoji: "🦝",
            name: "raccoon",
            keywords: ["raccoon", "mask", "trash"]
        },
        {
            emoji: "🦨",
            name: "skunk",
            keywords: ["skunk", "smell", "stripe"]
        },
        {
            emoji: "🦡",
            name: "badger",
            keywords: ["badger", "animal"]
        },
        {
            emoji: "🦦",
            name: "otter",
            keywords: ["otter", "cute", "water"]
        },
        {
            emoji: "🦥",
            name: "sloth",
            keywords: ["sloth", "slow", "lazy"]
        },
        {
            emoji: "🐁",
            name: "mouse",
            keywords: ["mouse", "small", "cheese"]
        },
        {
            emoji: "🐀",
            name: "rat",
            keywords: ["rat", "animal"]
        },
        {
            emoji: "🐿️",
            name: "chipmunk",
            keywords: ["chipmunk", "squirrel", "nuts"]
        },
        {
            emoji: "🦔",
            name: "hedgehog",
            keywords: ["hedgehog", "spiky", "cute"]
        },
        {
            emoji: "🐾",
            name: "paw prints",
            keywords: ["paw", "animal", "tracks"]
        },
        {
            emoji: "🐉",
            name: "dragon",
            keywords: ["dragon", "mythical", "fire"]
        },
        {
            emoji: "🐲",
            name: "dragon face",
            keywords: ["dragon", "chinese", "mythical"]
        },
        {
            emoji: "🌵",
            name: "cactus",
            keywords: ["cactus", "desert", "spiky"]
        },
        {
            emoji: "🎄",
            name: "Christmas tree",
            keywords: ["christmas", "tree", "holiday"]
        },
        {
            emoji: "🌲",
            name: "evergreen tree",
            keywords: ["tree", "pine", "forest"]
        },
        {
            emoji: "🌳",
            name: "deciduous tree",
            keywords: ["tree", "leaves", "nature"]
        },
        {
            emoji: "🌴",
            name: "palm tree",
            keywords: ["palm", "tropical", "beach"]
        },
        {
            emoji: "🌱",
            name: "seedling",
            keywords: ["plant", "grow", "green"]
        },
        {
            emoji: "🌿",
            name: "herb",
            keywords: ["plant", "green", "nature"]
        },
        {
            emoji: "☘️",
            name: "shamrock",
            keywords: ["shamrock", "irish", "luck"]
        },
        {
            emoji: "🍀",
            name: "four leaf clover",
            keywords: ["clover", "luck", "irish"]
        },
        {
            emoji: "🎍",
            name: "pine decoration",
            keywords: ["bamboo", "japanese", "new year"]
        },
        {
            emoji: "🎋",
            name: "tanabata tree",
            keywords: ["bamboo", "japanese", "wishes"]
        },
        {
            emoji: "🍃",
            name: "leaf fluttering in wind",
            keywords: ["leaf", "wind", "nature"]
        },
        {
            emoji: "🍂",
            name: "fallen leaves",
            keywords: ["leaves", "autumn", "fall"]
        },
        {
            emoji: "🍁",
            name: "maple leaf",
            keywords: ["maple", "canada", "autumn"]
        },
        {
            emoji: "🌾",
            name: "sheaf of rice",
            keywords: ["rice", "grain", "harvest"]
        },
        {
            emoji: "💐",
            name: "bouquet",
            keywords: ["flowers", "bouquet", "gift"]
        },
        {
            emoji: "🌷",
            name: "tulip",
            keywords: ["tulip", "flower", "spring"]
        },
        {
            emoji: "🌹",
            name: "rose",
            keywords: ["rose", "flower", "love"]
        },
        {
            emoji: "🥀",
            name: "wilted flower",
            keywords: ["flower", "dead", "sad"]
        },
        {
            emoji: "🌺",
            name: "hibiscus",
            keywords: ["hibiscus", "flower", "tropical"]
        },
        {
            emoji: "🌻",
            name: "sunflower",
            keywords: ["sunflower", "yellow", "happy"]
        },
        {
            emoji: "🌼",
            name: "blossom",
            keywords: ["flower", "daisy", "spring"]
        },
        {
            emoji: "🌸",
            name: "cherry blossom",
            keywords: ["cherry", "blossom", "pink", "japan"]
        },

        // Activities & Sports
        {
            emoji: "⚽",
            name: "soccer ball",
            keywords: ["soccer", "football", "sport"]
        },
        {
            emoji: "🏀",
            name: "basketball",
            keywords: ["basketball", "sport", "orange"]
        },
        {
            emoji: "🏈",
            name: "american football",
            keywords: ["football", "american", "sport"]
        },
        {
            emoji: "⚾",
            name: "baseball",
            keywords: ["baseball", "sport", "america"]
        },
        {
            emoji: "🥎",
            name: "softball",
            keywords: ["softball", "sport"]
        },
        {
            emoji: "🎾",
            name: "tennis",
            keywords: ["tennis", "sport", "ball"]
        },
        {
            emoji: "🏐",
            name: "volleyball",
            keywords: ["volleyball", "sport"]
        },
        {
            emoji: "🏉",
            name: "rugby football",
            keywords: ["rugby", "sport"]
        },
        {
            emoji: "🥏",
            name: "flying disc",
            keywords: ["frisbee", "disc", "sport"]
        },
        {
            emoji: "🎱",
            name: "pool 8 ball",
            keywords: ["pool", "billiards", "8 ball"]
        },
        {
            emoji: "🪀",
            name: "yo-yo",
            keywords: ["yo-yo", "toy"]
        },
        {
            emoji: "🏓",
            name: "ping pong",
            keywords: ["ping pong", "table tennis", "sport"]
        },
        {
            emoji: "🏸",
            name: "badminton",
            keywords: ["badminton", "sport"]
        },
        {
            emoji: "🏒",
            name: "ice hockey",
            keywords: ["hockey", "ice", "sport"]
        },
        {
            emoji: "🏑",
            name: "field hockey",
            keywords: ["hockey", "field", "sport"]
        },
        {
            emoji: "🥍",
            name: "lacrosse",
            keywords: ["lacrosse", "sport"]
        },
        {
            emoji: "🏏",
            name: "cricket game",
            keywords: ["cricket", "sport"]
        },
        {
            emoji: "🪃",
            name: "boomerang",
            keywords: ["boomerang", "australia"]
        },
        {
            emoji: "🥅",
            name: "goal net",
            keywords: ["goal", "soccer", "sport"]
        },
        {
            emoji: "⛳",
            name: "flag in hole",
            keywords: ["golf", "flag", "sport"]
        },
        {
            emoji: "🪁",
            name: "kite",
            keywords: ["kite", "fly", "wind"]
        },
        {
            emoji: "🏹",
            name: "bow and arrow",
            keywords: ["archery", "bow", "arrow"]
        },
        {
            emoji: "🎣",
            name: "fishing pole",
            keywords: ["fishing", "pole", "hobby"]
        },
        {
            emoji: "🤿",
            name: "diving mask",
            keywords: ["diving", "snorkel", "underwater"]
        },
        {
            emoji: "🥊",
            name: "boxing glove",
            keywords: ["boxing", "fight", "sport"]
        },
        {
            emoji: "🥋",
            name: "martial arts uniform",
            keywords: ["karate", "martial arts", "gi"]
        },
        {
            emoji: "🎽",
            name: "running shirt",
            keywords: ["running", "marathon", "sport"]
        },
        {
            emoji: "🛹",
            name: "skateboard",
            keywords: ["skateboard", "skate", "sport"]
        },
        {
            emoji: "🛷",
            name: "sled",
            keywords: ["sled", "snow", "winter"]
        },
        {
            emoji: "⛸️",
            name: "ice skate",
            keywords: ["ice skating", "winter", "sport"]
        },
        {
            emoji: "🥌",
            name: "curling stone",
            keywords: ["curling", "ice", "sport"]
        },
        {
            emoji: "🎿",
            name: "skis",
            keywords: ["skiing", "snow", "winter"]
        },
        {
            emoji: "⛷️",
            name: "skier",
            keywords: ["skiing", "snow", "sport"]
        },
        {
            emoji: "🏂",
            name: "snowboarder",
            keywords: ["snowboard", "snow", "sport"]
        },
        {
            emoji: "🪂",
            name: "parachute",
            keywords: ["parachute", "skydiving"]
        },
        {
            emoji: "🏋️",
            name: "person lifting weights",
            keywords: ["weightlifting", "gym", "strong"]
        },
        {
            emoji: "🤼",
            name: "people wrestling",
            keywords: ["wrestling", "sport", "fight"]
        },
        {
            emoji: "🤸",
            name: "person cartwheeling",
            keywords: ["cartwheel", "gymnastics"]
        },
        {
            emoji: "⛹️",
            name: "person bouncing ball",
            keywords: ["basketball", "dribble", "sport"]
        },
        {
            emoji: "🤺",
            name: "person fencing",
            keywords: ["fencing", "sword", "sport"]
        },
        {
            emoji: "🏇",
            name: "horse racing",
            keywords: ["horse racing", "jockey", "sport"]
        },
        {
            emoji: "⛷️",
            name: "skier",
            keywords: ["skiing", "snow", "winter"]
        },
        {
            emoji: "🏌️",
            name: "person golfing",
            keywords: ["golf", "sport"]
        },
        {
            emoji: "🏄",
            name: "person surfing",
            keywords: ["surfing", "wave", "sport"]
        },
        {
            emoji: "🚣",
            name: "person rowing boat",
            keywords: ["rowing", "boat", "sport"]
        },
        {
            emoji: "🏊",
            name: "person swimming",
            keywords: ["swimming", "pool", "sport"]
        },
        {
            emoji: "⛹️",
            name: "person bouncing ball",
            keywords: ["basketball", "sport"]
        },
        {
            emoji: "🏋️",
            name: "person lifting weights",
            keywords: ["weightlifting", "gym"]
        },
        {
            emoji: "🚴",
            name: "person biking",
            keywords: ["cycling", "bike", "sport"]
        },
        {
            emoji: "🚵",
            name: "person mountain biking",
            keywords: ["mountain biking", "bike"]
        },
        {
            emoji: "🤸",
            name: "person cartwheeling",
            keywords: ["gymnastics", "cartwheel"]
        },
        {
            emoji: "🤼",
            name: "people wrestling",
            keywords: ["wrestling", "sport"]
        },
        {
            emoji: "🤽",
            name: "person playing water polo",
            keywords: ["water polo", "sport"]
        },
        {
            emoji: "🤾",
            name: "person playing handball",
            keywords: ["handball", "sport"]
        },
        {
            emoji: "🤹",
            name: "person juggling",
            keywords: ["juggling", "circus"]
        },
        {
            emoji: "🧘",
            name: "person in lotus position",
            keywords: ["meditation", "yoga", "zen"]
        },
        {
            emoji: "🛀",
            name: "person taking bath",
            keywords: ["bath", "relax", "clean"]
        },
        {
            emoji: "🛌",
            name: "person in bed",
            keywords: ["sleep", "bed", "rest"]
        },

        // Travel & Places
        {
            emoji: "🚗",
            name: "automobile",
            keywords: ["car", "vehicle", "drive"]
        },
        {
            emoji: "🚕",
            name: "taxi",
            keywords: ["taxi", "cab", "yellow"]
        },
        {
            emoji: "🚙",
            name: "sport utility vehicle",
            keywords: ["suv", "car", "vehicle"]
        },
        {
            emoji: "🚌",
            name: "bus",
            keywords: ["bus", "public transport"]
        },
        {
            emoji: "🚎",
            name: "trolleybus",
            keywords: ["trolley", "bus", "electric"]
        },
        {
            emoji: "🏎️",
            name: "racing car",
            keywords: ["race car", "fast", "formula"]
        },
        {
            emoji: "🚓",
            name: "police car",
            keywords: ["police", "cop", "law"]
        },
        {
            emoji: "🚑",
            name: "ambulance",
            keywords: ["ambulance", "emergency", "medical"]
        },
        {
            emoji: "🚒",
            name: "fire engine",
            keywords: ["fire truck", "emergency", "red"]
        },
        {
            emoji: "🚐",
            name: "minibus",
            keywords: ["van", "minibus", "vehicle"]
        },
        {
            emoji: "🛻",
            name: "pickup truck",
            keywords: ["truck", "pickup", "vehicle"]
        },
        {
            emoji: "🚚",
            name: "delivery truck",
            keywords: ["truck", "delivery", "cargo"]
        },
        {
            emoji: "🚛",
            name: "articulated lorry",
            keywords: ["truck", "semi", "big rig"]
        },
        {
            emoji: "🚜",
            name: "tractor",
            keywords: ["tractor", "farm", "agriculture"]
        },
        {
            emoji: "🏍️",
            name: "motorcycle",
            keywords: ["motorcycle", "bike", "fast"]
        },
        {
            emoji: "🛵",
            name: "motor scooter",
            keywords: ["scooter", "moped", "vespa"]
        },
        {
            emoji: "🚲",
            name: "bicycle",
            keywords: ["bike", "bicycle", "pedal"]
        },
        {
            emoji: "🛴",
            name: "kick scooter",
            keywords: ["scooter", "kick", "ride"]
        },
        {
            emoji: "🛼",
            name: "roller skate",
            keywords: ["roller skate", "retro", "wheels"]
        },
        {
            emoji: "🚁",
            name: "helicopter",
            keywords: ["helicopter", "chopper", "fly"]
        },
        {
            emoji: "✈️",
            name: "airplane",
            keywords: ["airplane", "plane", "fly", "travel"]
        },
        {
            emoji: "🛩️",
            name: "small airplane",
            keywords: ["small plane", "private jet"]
        },
        {
            emoji: "🛫",
            name: "airplane departure",
            keywords: ["takeoff", "departure", "fly"]
        },
        {
            emoji: "🛬",
            name: "airplane arrival",
            keywords: ["landing", "arrival", "fly"]
        },
        {
            emoji: "🪂",
            name: "parachute",
            keywords: ["parachute", "skydiving", "jump"]
        },
        {
            emoji: "💺",
            name: "seat",
            keywords: ["seat", "chair", "airplane"]
        },
        {
            emoji: "🚀",
            name: "rocket",
            keywords: ["rocket", "space", "launch"]
        },
        {
            emoji: "🛸",
            name: "flying saucer",
            keywords: ["ufo", "alien", "space"]
        },
        {
            emoji: "🚉",
            name: "station",
            keywords: ["station", "train", "subway"]
        },
        {
            emoji: "🚞",
            name: "mountain railway",
            keywords: ["mountain train", "railway"]
        },
        {
            emoji: "🚝",
            name: "monorail",
            keywords: ["monorail", "train"]
        },
        {
            emoji: "🚄",
            name: "high-speed train",
            keywords: ["bullet train", "fast", "japan"]
        },
        {
            emoji: "🚅",
            name: "bullet train",
            keywords: ["shinkansen", "fast", "japan"]
        },
        {
            emoji: "🚈",
            name: "light rail",
            keywords: ["light rail", "tram", "metro"]
        },
        {
            emoji: "🚂",
            name: "locomotive",
            keywords: ["train", "steam", "old"]
        },
        {
            emoji: "🚃",
            name: "railway car",
            keywords: ["train car", "railway"]
        },
        {
            emoji: "🚋",
            name: "tram car",
            keywords: ["tram", "streetcar", "trolley"]
        },
        {
            emoji: "🚇",
            name: "metro",
            keywords: ["subway", "metro", "underground"]
        },
        {
            emoji: "🚊",
            name: "tram",
            keywords: ["tram", "streetcar", "public transport"]
        },
        {
            emoji: "🚆",
            name: "train",
            keywords: ["train", "railway", "transport"]
        },
        {
            emoji: "🚄",
            name: "high-speed train",
            keywords: ["bullet train", "fast"]
        },
        {
            emoji: "🚅",
            name: "bullet train",
            keywords: ["shinkansen", "japan", "fast"]
        },
        {
            emoji: "🚈",
            name: "light rail",
            keywords: ["light rail", "metro"]
        },
        {
            emoji: "🚝",
            name: "monorail",
            keywords: ["monorail", "elevated"]
        },
        {
            emoji: "🚞",
            name: "mountain railway",
            keywords: ["mountain train", "scenic"]
        },
        {
            emoji: "🚋",
            name: "tram car",
            keywords: ["tram", "streetcar"]
        },
        {
            emoji: "🚃",
            name: "railway car",
            keywords: ["train car", "wagon"]
        },
        {
            emoji: "🚂",
            name: "locomotive",
            keywords: ["steam train", "engine"]
        },
        {
            emoji: "🚁",
            name: "helicopter",
            keywords: ["helicopter", "rotor"]
        },
        {
            emoji: "🚟",
            name: "suspension railway",
            keywords: ["suspended train", "monorail"]
        },
        {
            emoji: "🚠",
            name: "mountain cableway",
            keywords: ["cable car", "gondola"]
        },
        {
            emoji: "🚡",
            name: "aerial tramway",
            keywords: ["cable car", "ski lift"]
        },
        {
            emoji: "🛰️",
            name: "satellite",
            keywords: ["satellite", "space", "communication"]
        },
        {
            emoji: "🚀",
            name: "rocket",
            keywords: ["rocket", "space", "nasa"]
        },
        {
            emoji: "🛸",
            name: "flying saucer",
            keywords: ["ufo", "alien", "extraterrestrial"]
        },
        {
            emoji: "🛎️",
            name: "bellhop bell",
            keywords: ["bell", "hotel", "service"]
        },
        {
            emoji: "🧳",
            name: "luggage",
            keywords: ["suitcase", "travel", "baggage"]
        },
        {
            emoji: "⌛",
            name: "hourglass done",
            keywords: ["hourglass", "time", "sand"]
        },
        {
            emoji: "⏳",
            name: "hourglass not done",
            keywords: ["hourglass", "time", "waiting"]
        },
        {
            emoji: "⌚",
            name: "watch",
            keywords: ["watch", "time", "wrist"]
        },
        {
            emoji: "⏰",
            name: "alarm clock",
            keywords: ["alarm", "clock", "wake up"]
        },
        {
            emoji: "⏱️",
            name: "stopwatch",
            keywords: ["stopwatch", "timer", "sport"]
        },
        {
            emoji: "⏲️",
            name: "timer clock",
            keywords: ["timer", "clock", "countdown"]
        },
        {
            emoji: "🕰️",
            name: "mantelpiece clock",
            keywords: ["clock", "antique", "time"]
        },
        {
            emoji: "🕛",
            name: "twelve o'clock",
            keywords: ["12", "noon", "midnight"]
        },
        {
            emoji: "🕧",
            name: "twelve-thirty",
            keywords: ["12:30", "time"]
        },
        {
            emoji: "🕐",
            name: "one o'clock",
            keywords: ["1", "time"]
        },
        {
            emoji: "🕜",
            name: "one-thirty",
            keywords: ["1:30", "time"]
        },
        {
            emoji: "🕑",
            name: "two o'clock",
            keywords: ["2", "time"]
        },
        {
            emoji: "🕝",
            name: "two-thirty",
            keywords: ["2:30", "time"]
        },
        {
            emoji: "🕒",
            name: "three o'clock",
            keywords: ["3", "time"]
        },
        {
            emoji: "🕞",
            name: "three-thirty",
            keywords: ["3:30", "time"]
        },
        {
            emoji: "🕓",
            name: "four o'clock",
            keywords: ["4", "time"]
        },
        {
            emoji: "🕟",
            name: "four-thirty",
            keywords: ["4:30", "time"]
        },
        {
            emoji: "🕔",
            name: "five o'clock",
            keywords: ["5", "time"]
        },
        {
            emoji: "🕠",
            name: "five-thirty",
            keywords: ["5:30", "time"]
        },
        {
            emoji: "🕕",
            name: "six o'clock",
            keywords: ["6", "time"]
        },
        {
            emoji: "🕡",
            name: "six-thirty",
            keywords: ["6:30", "time"]
        },
        {
            emoji: "🕖",
            name: "seven o'clock",
            keywords: ["7", "time"]
        },
        {
            emoji: "🕢",
            name: "seven-thirty",
            keywords: ["7:30", "time"]
        },
        {
            emoji: "🕗",
            name: "eight o'clock",
            keywords: ["8", "time"]
        },
        {
            emoji: "🕣",
            name: "eight-thirty",
            keywords: ["8:30", "time"]
        },
        {
            emoji: "🕘",
            name: "nine o'clock",
            keywords: ["9", "time"]
        },
        {
            emoji: "🕤",
            name: "nine-thirty",
            keywords: ["9:30", "time"]
        },
        {
            emoji: "🕙",
            name: "ten o'clock",
            keywords: ["10", "time"]
        },
        {
            emoji: "🕥",
            name: "ten-thirty",
            keywords: ["10:30", "time"]
        },
        {
            emoji: "🕚",
            name: "eleven o'clock",
            keywords: ["11", "time"]
        },
        {
            emoji: "🕦",
            name: "eleven-thirty",
            keywords: ["11:30", "time"]
        },
        {
            emoji: "🌑",
            name: "new moon",
            keywords: ["moon", "dark", "space"]
        },
        {
            emoji: "🌒",
            name: "waxing crescent moon",
            keywords: ["moon", "crescent", "space"]
        },
        {
            emoji: "🌓",
            name: "first quarter moon",
            keywords: ["moon", "half", "space"]
        },
        {
            emoji: "🌔",
            name: "waxing gibbous moon",
            keywords: ["moon", "gibbous", "space"]
        },
        {
            emoji: "🌕",
            name: "full moon",
            keywords: ["moon", "full", "bright", "space"]
        },
        {
            emoji: "🌖",
            name: "waning gibbous moon",
            keywords: ["moon", "gibbous", "space"]
        },
        {
            emoji: "🌗",
            name: "last quarter moon",
            keywords: ["moon", "half", "space"]
        },
        {
            emoji: "🌘",
            name: "waning crescent moon",
            keywords: ["moon", "crescent", "space"]
        },
        {
            emoji: "🌙",
            name: "crescent moon",
            keywords: ["moon", "night", "sleep"]
        },
        {
            emoji: "🌚",
            name: "new moon face",
            keywords: ["moon", "face", "dark"]
        },
        {
            emoji: "🌛",
            name: "first quarter moon face",
            keywords: ["moon", "face", "sleepy"]
        },
        {
            emoji: "🌜",
            name: "last quarter moon face",
            keywords: ["moon", "face", "sleepy"]
        },
        {
            emoji: "🌡️",
            name: "thermometer",
            keywords: ["temperature", "hot", "cold", "weather"]
        },
        {
            emoji: "☀️",
            name: "sun",
            keywords: ["sun", "sunny", "bright", "hot"]
        },
        {
            emoji: "🌝",
            name: "full moon face",
            keywords: ["moon", "face", "bright"]
        },
        {
            emoji: "🌞",
            name: "sun with face",
            keywords: ["sun", "face", "happy"]
        },
        {
            emoji: "🪐",
            name: "ringed planet",
            keywords: ["saturn", "planet", "space"]
        },
        {
            emoji: "⭐",
            name: "star",
            keywords: ["star", "bright", "space"]
        },
        {
            emoji: "🌟",
            name: "glowing star",
            keywords: ["star", "sparkle", "bright"]
        },
        {
            emoji: "🌠",
            name: "shooting star",
            keywords: ["shooting star", "meteor", "wish"]
        },
        {
            emoji: "🌌",
            name: "milky way",
            keywords: ["galaxy", "space", "stars"]
        },
        {
            emoji: "☁️",
            name: "cloud",
            keywords: ["cloud", "weather", "sky"]
        },
        {
            emoji: "⛅",
            name: "sun behind cloud",
            keywords: ["partly cloudy", "weather"]
        },
        {
            emoji: "⛈️",
            name: "cloud with lightning and rain",
            keywords: ["storm", "thunder", "rain"]
        },
        {
            emoji: "🌤️",
            name: "sun behind small cloud",
            keywords: ["partly sunny", "weather"]
        },
        {
            emoji: "🌥️",
            name: "sun behind large cloud",
            keywords: ["cloudy", "overcast"]
        },
        {
            emoji: "🌦️",
            name: "sun behind rain cloud",
            keywords: ["sun shower", "rain"]
        },
        {
            emoji: "🌧️",
            name: "cloud with rain",
            keywords: ["rain", "weather", "wet"]
        },
        {
            emoji: "⛈️",
            name: "cloud with lightning and rain",
            keywords: ["thunderstorm", "lightning"]
        },
        {
            emoji: "🌩️",
            name: "cloud with lightning",
            keywords: ["lightning", "thunder"]
        },
        {
            emoji: "🌨️",
            name: "cloud with snow",
            keywords: ["snow", "winter", "cold"]
        },
        {
            emoji: "❄️",
            name: "snowflake",
            keywords: ["snow", "winter", "cold", "unique"]
        },
        {
            emoji: "☃️",
            name: "snowman",
            keywords: ["snowman", "winter", "cold"]
        },
        {
            emoji: "⛄",
            name: "snowman without snow",
            keywords: ["snowman", "winter"]
        },
        {
            emoji: "❄️",
            name: "snowflake",
            keywords: ["snow", "winter", "ice"]
        },
        {
            emoji: "🌬️",
            name: "wind face",
            keywords: ["wind", "blow", "weather"]
        },
        {
            emoji: "💨",
            name: "dashing away",
            keywords: ["wind", "fast", "speed"]
        },
        {
            emoji: "💧",
            name: "droplet",
            keywords: ["water", "drop", "rain"]
        },
        {
            emoji: "💦",
            name: "sweat droplets",
            keywords: ["water", "splash", "sweat"]
        },
        {
            emoji: "☔",
            name: "umbrella with rain drops",
            keywords: ["rain", "umbrella", "wet"]
        },
        {
            emoji: "☂️",
            name: "umbrella",
            keywords: ["umbrella", "rain", "protection"]
        },
        {
            emoji: "🌊",
            name: "water wave",
            keywords: ["wave", "ocean", "tsunami"]
        },
        {
            emoji: "🌫️",
            name: "fog",
            keywords: ["fog", "mist", "weather"]
        },

        // Objects
        {
            emoji: "⌚",
            name: "watch",
            keywords: ["watch", "time", "accessory"]
        },
        {
            emoji: "📱",
            name: "mobile phone",
            keywords: ["phone", "mobile", "smartphone"]
        },
        {
            emoji: "📲",
            name: "mobile phone with arrow",
            keywords: ["phone", "call", "incoming"]
        },
        {
            emoji: "💻",
            name: "laptop",
            keywords: ["laptop", "computer", "work"]
        },
        {
            emoji: "⌨️",
            name: "keyboard",
            keywords: ["keyboard", "typing", "computer"]
        },
        {
            emoji: "🖥️",
            name: "desktop computer",
            keywords: ["computer", "desktop", "monitor"]
        },
        {
            emoji: "🖨️",
            name: "printer",
            keywords: ["printer", "print", "office"]
        },
        {
            emoji: "🖱️",
            name: "computer mouse",
            keywords: ["mouse", "computer", "click"]
        },
        {
            emoji: "🖲️",
            name: "trackball",
            keywords: ["trackball", "computer", "old"]
        },
        {
            emoji: "🕹️",
            name: "joystick",
            keywords: ["joystick", "gaming", "controller"]
        },
        {
            emoji: "🗜️",
            name: "clamp",
            keywords: ["clamp", "tool", "squeeze"]
        },
        {
            emoji: "💽",
            name: "computer disk",
            keywords: ["disk", "floppy", "old"]
        },
        {
            emoji: "💾",
            name: "floppy disk",
            keywords: ["floppy", "save", "old"]
        },
        {
            emoji: "💿",
            name: "optical disk",
            keywords: ["cd", "disk", "music"]
        },
        {
            emoji: "📀",
            name: "dvd",
            keywords: ["dvd", "movie", "disk"]
        },
        {
            emoji: "🧮",
            name: "abacus",
            keywords: ["abacus", "math", "calculator"]
        },
        {
            emoji: "🎥",
            name: "movie camera",
            keywords: ["camera", "movie", "film"]
        },
        {
            emoji: "🎞️",
            name: "film frames",
            keywords: ["film", "movie", "cinema"]
        },
        {
            emoji: "📽️",
            name: "film projector",
            keywords: ["projector", "movie", "cinema"]
        },
        {
            emoji: "🎬",
            name: "clapper board",
            keywords: ["movie", "film", "action"]
        },
        {
            emoji: "📺",
            name: "television",
            keywords: ["tv", "television", "watch"]
        },
        {
            emoji: "📷",
            name: "camera",
            keywords: ["camera", "photo", "picture"]
        },
        {
            emoji: "📸",
            name: "camera with flash",
            keywords: ["camera", "flash", "photo"]
        },
        {
            emoji: "📹",
            name: "video camera",
            keywords: ["video", "camera", "record"]
        },
        {
            emoji: "📼",
            name: "videocassette",
            keywords: ["vhs", "tape", "old"]
        },
        {
            emoji: "🔍",
            name: "magnifying glass tilted left",
            keywords: ["search", "magnify", "look"]
        },
        {
            emoji: "🔎",
            name: "magnifying glass tilted right",
            keywords: ["search", "magnify", "find"]
        },
        {
            emoji: "🕯️",
            name: "candle",
            keywords: ["candle", "light", "flame"]
        },
        {
            emoji: "💡",
            name: "light bulb",
            keywords: ["bulb", "idea", "light"]
        },
        {
            emoji: "🔦",
            name: "flashlight",
            keywords: ["flashlight", "torch", "light"]
        },
        {
            emoji: "🏮",
            name: "red paper lantern",
            keywords: ["lantern", "japanese", "red"]
        },
        {
            emoji: "🪔",
            name: "diya lamp",
            keywords: ["lamp", "oil", "diwali"]
        },
        {
            emoji: "📔",
            name: "notebook with decorative cover",
            keywords: ["notebook", "book", "write"]
        },
        {
            emoji: "📕",
            name: "closed book",
            keywords: ["book", "read", "closed"]
        },
        {
            emoji: "📖",
            name: "open book",
            keywords: ["book", "read", "open"]
        },
        {
            emoji: "📗",
            name: "green book",
            keywords: ["book", "green", "read"]
        },
        {
            emoji: "📘",
            name: "blue book",
            keywords: ["book", "blue", "read"]
        },
        {
            emoji: "📙",
            name: "orange book",
            keywords: ["book", "orange", "read"]
        },
        {
            emoji: "📚",
            name: "books",
            keywords: ["books", "stack", "library"]
        },
        {
            emoji: "📓",
            name: "notebook",
            keywords: ["notebook", "notes", "write"]
        },
        {
            emoji: "📒",
            name: "ledger",
            keywords: ["ledger", "book", "accounting"]
        },
        {
            emoji: "📃",
            name: "page with curl",
            keywords: ["page", "document", "paper"]
        },
        {
            emoji: "📜",
            name: "scroll",
            keywords: ["scroll", "ancient", "document"]
        },
        {
            emoji: "📄",
            name: "page facing up",
            keywords: ["page", "document", "paper"]
        },
        {
            emoji: "📰",
            name: "newspaper",
            keywords: ["newspaper", "news", "read"]
        },
        {
            emoji: "🗞️",
            name: "rolled-up newspaper",
            keywords: ["newspaper", "rolled", "news"]
        },
        {
            emoji: "📑",
            name: "bookmark tabs",
            keywords: ["bookmark", "tabs", "organize"]
        },
        {
            emoji: "🔖",
            name: "bookmark",
            keywords: ["bookmark", "save", "mark"]
        },
        {
            emoji: "🏷️",
            name: "label",
            keywords: ["label", "tag", "price"]
        },
        {
            emoji: "💰",
            name: "money bag",
            keywords: ["money", "bag", "rich"]
        },
        {
            emoji: "🪙",
            name: "coin",
            keywords: ["coin", "money", "currency"]
        },
        {
            emoji: "💴",
            name: "yen banknote",
            keywords: ["yen", "money", "japan"]
        },
        {
            emoji: "💵",
            name: "dollar banknote",
            keywords: ["dollar", "money", "usa"]
        },
        {
            emoji: "💶",
            name: "euro banknote",
            keywords: ["euro", "money", "europe"]
        },
        {
            emoji: "💷",
            name: "pound banknote",
            keywords: ["pound", "money", "uk"]
        },
        {
            emoji: "💸",
            name: "money with wings",
            keywords: ["money", "flying", "spend"]
        },
        {
            emoji: "💳",
            name: "credit card",
            keywords: ["credit card", "payment", "money"]
        },
        {
            emoji: "🧾",
            name: "receipt",
            keywords: ["receipt", "bill", "payment"]
        },
        {
            emoji: "💹",
            name: "chart increasing with yen",
            keywords: ["chart", "stocks", "profit"]
        },
        {
            emoji: "✉️",
            name: "envelope",
            keywords: ["envelope", "mail", "letter"]
        },
        {
            emoji: "📧",
            name: "e-mail",
            keywords: ["email", "mail", "electronic"]
        },
        {
            emoji: "📨",
            name: "incoming envelope",
            keywords: ["mail", "incoming", "envelope"]
        },
        {
            emoji: "📩",
            name: "envelope with arrow",
            keywords: ["mail", "send", "envelope"]
        },
        {
            emoji: "📤",
            name: "outbox tray",
            keywords: ["outbox", "send", "mail"]
        },
        {
            emoji: "📥",
            name: "inbox tray",
            keywords: ["inbox", "receive", "mail"]
        },
        {
            emoji: "📦",
            name: "package",
            keywords: ["package", "box", "delivery"]
        },
        {
            emoji: "📫",
            name: "closed mailbox with raised flag",
            keywords: ["mailbox", "mail", "flag"]
        },
        {
            emoji: "📪",
            name: "closed mailbox with lowered flag",
            keywords: ["mailbox", "mail", "empty"]
        },
        {
            emoji: "📬",
            name: "open mailbox with raised flag",
            keywords: ["mailbox", "mail", "open"]
        },
        {
            emoji: "📭",
            name: "open mailbox with lowered flag",
            keywords: ["mailbox", "mail", "empty"]
        },
        {
            emoji: "📮",
            name: "postbox",
            keywords: ["postbox", "mail", "send"]
        },
        {
            emoji: "🗳️",
            name: "ballot box with ballot",
            keywords: ["vote", "election", "ballot"]
        },
        {
            emoji: "✏️",
            name: "pencil",
            keywords: ["pencil", "write", "draw"]
        },
        {
            emoji: "✒️",
            name: "black nib",
            keywords: ["pen", "write", "ink"]
        },
        {
            emoji: "🖋️",
            name: "fountain pen",
            keywords: ["fountain pen", "write", "fancy"]
        },
        {
            emoji: "🖊️",
            name: "pen",
            keywords: ["pen", "write", "ballpoint"]
        },
        {
            emoji: "🖌️",
            name: "paintbrush",
            keywords: ["paintbrush", "paint", "art"]
        },
        {
            emoji: "🖍️",
            name: "crayon",
            keywords: ["crayon", "color", "draw"]
        },
        {
            emoji: "📝",
            name: "memo",
            keywords: ["memo", "note", "write"]
        },
        {
            emoji: "💼",
            name: "briefcase",
            keywords: ["briefcase", "work", "business"]
        },
        {
            emoji: "📁",
            name: "file folder",
            keywords: ["folder", "file", "organize"]
        },
        {
            emoji: "📂",
            name: "open file folder",
            keywords: ["folder", "open", "file"]
        },
        {
            emoji: "🗂️",
            name: "card index dividers",
            keywords: ["dividers", "organize", "file"]
        },
        {
            emoji: "📅",
            name: "calendar",
            keywords: ["calendar", "date", "schedule"]
        },
        {
            emoji: "📆",
            name: "tear-off calendar",
            keywords: ["calendar", "date", "day"]
        },
        {
            emoji: "🗒️",
            name: "spiral notepad",
            keywords: ["notepad", "notes", "spiral"]
        },
        {
            emoji: "🗓️",
            name: "spiral calendar",
            keywords: ["calendar", "spiral", "date"]
        },
        {
            emoji: "📇",
            name: "card index",
            keywords: ["card index", "rolodex", "contacts"]
        },
        {
            emoji: "📈",
            name: "chart increasing",
            keywords: ["chart", "graph", "up"]
        },
        {
            emoji: "📉",
            name: "chart decreasing",
            keywords: ["chart", "graph", "down"]
        },
        {
            emoji: "📊",
            name: "bar chart",
            keywords: ["chart", "bar", "graph"]
        },
        {
            emoji: "📋",
            name: "clipboard",
            keywords: ["clipboard", "copy", "paste"]
        },
        {
            emoji: "📌",
            name: "pushpin",
            keywords: ["pin", "pushpin", "attach"]
        },
        {
            emoji: "📍",
            name: "round pushpin",
            keywords: ["pin", "location", "map"]
        },
        {
            emoji: "📎",
            name: "paperclip",
            keywords: ["paperclip", "attach", "clip"]
        },
        {
            emoji: "🖇️",
            name: "linked paperclips",
            keywords: ["paperclips", "linked", "attach"]
        },
        {
            emoji: "📏",
            name: "straight ruler",
            keywords: ["ruler", "measure", "straight"]
        },
        {
            emoji: "📐",
            name: "triangular ruler",
            keywords: ["ruler", "triangle", "measure"]
        },
        {
            emoji: "✂️",
            name: "scissors",
            keywords: ["scissors", "cut", "tool"]
        },
        {
            emoji: "🗃️",
            name: "card file box",
            keywords: ["file box", "storage", "organize"]
        },
        {
            emoji: "🗄️",
            name: "file cabinet",
            keywords: ["file cabinet", "storage", "office"]
        },
        {
            emoji: "🗑️",
            name: "wastebasket",
            keywords: ["trash", "garbage", "delete"]
        },
        {
            emoji: "🔒",
            name: "locked",
            keywords: ["lock", "secure", "private"]
        },
        {
            emoji: "🔓",
            name: "unlocked",
            keywords: ["unlock", "open", "access"]
        },
        {
            emoji: "🔏",
            name: "locked with pen",
            keywords: ["lock", "pen", "secure"]
        },
        {
            emoji: "🔐",
            name: "locked with key",
            keywords: ["lock", "key", "secure"]
        },
        {
            emoji: "🔑",
            name: "key",
            keywords: ["key", "unlock", "access"]
        },
        {
            emoji: "🗝️",
            name: "old key",
            keywords: ["old key", "antique", "unlock"]
        },
        {
            emoji: "🔨",
            name: "hammer",
            keywords: ["hammer", "tool", "build"]
        },
        {
            emoji: "🪓",
            name: "axe",
            keywords: ["axe", "chop", "wood"]
        },
        {
            emoji: "⛏️",
            name: "pick",
            keywords: ["pick", "mine", "tool"]
        },
        {
            emoji: "⚒️",
            name: "hammer and pick",
            keywords: ["tools", "work", "build"]
        },
        {
            emoji: "🛠️",
            name: "hammer and wrench",
            keywords: ["tools", "repair", "fix"]
        },
        {
            emoji: "🗡️",
            name: "dagger",
            keywords: ["dagger", "knife", "weapon"]
        },
        {
            emoji: "⚔️",
            name: "crossed swords",
            keywords: ["swords", "fight", "battle"]
        },
        {
            emoji: "🔫",
            name: "water pistol",
            keywords: ["water gun", "toy", "squirt"]
        },
        {
            emoji: "🪃",
            name: "boomerang",
            keywords: ["boomerang", "return", "australia"]
        },
        {
            emoji: "🏹",
            name: "bow and arrow",
            keywords: ["bow", "arrow", "archery"]
        },
        {
            emoji: "🛡️",
            name: "shield",
            keywords: ["shield", "protect", "defense"]
        },
        {
            emoji: "🪚",
            name: "carpentry saw",
            keywords: ["saw", "cut", "wood"]
        },
        {
            emoji: "🔧",
            name: "wrench",
            keywords: ["wrench", "tool", "fix"]
        },
        {
            emoji: "🪛",
            name: "screwdriver",
            keywords: ["screwdriver", "tool", "screw"]
        },
        {
            emoji: "🔩",
            name: "nut and bolt",
            keywords: ["nut", "bolt", "hardware"]
        },
        {
            emoji: "⚙️",
            name: "gear",
            keywords: ["gear", "settings", "mechanical"]
        },
        {
            emoji: "🗜️",
            name: "clamp",
            keywords: ["clamp", "tool", "grip"]
        },
        {
            emoji: "⚖️",
            name: "balance scale",
            keywords: ["scale", "justice", "balance"]
        },
        {
            emoji: "🦯",
            name: "white cane",
            keywords: ["cane", "blind", "accessibility"]
        },
        {
            emoji: "🔗",
            name: "link",
            keywords: ["link", "chain", "connect"]
        },
        {
            emoji: "⛓️",
            name: "chains",
            keywords: ["chain", "metal", "link"]
        },
        {
            emoji: "🪝",
            name: "hook",
            keywords: ["hook", "hang", "catch"]
        },
        {
            emoji: "🧰",
            name: "toolbox",
            keywords: ["toolbox", "tools", "repair"]
        },
        {
            emoji: "🧲",
            name: "magnet",
            keywords: ["magnet", "attract", "magnetic"]
        },
        {
            emoji: "🪜",
            name: "ladder",
            keywords: ["ladder", "climb", "steps"]
        },
        {
            emoji: "⚗️",
            name: "alembic",
            keywords: ["alembic", "chemistry", "distill"]
        },
        {
            emoji: "🧪",
            name: "test tube",
            keywords: ["test tube", "science", "chemistry"]
        },
        {
            emoji: "🧫",
            name: "petri dish",
            keywords: ["petri dish", "bacteria", "science"]
        },
        {
            emoji: "🧬",
            name: "dna",
            keywords: ["dna", "genetics", "science"]
        },
        {
            emoji: "🔬",
            name: "microscope",
            keywords: ["microscope", "science", "magnify"]
        },
        {
            emoji: "🔭",
            name: "telescope",
            keywords: ["telescope", "space", "stars"]
        },
        {
            emoji: "📡",
            name: "satellite antenna",
            keywords: ["antenna", "satellite", "communication"]
        },
        {
            emoji: "💉",
            name: "syringe",
            keywords: ["syringe", "injection", "medical"]
        },
        {
            emoji: "🩸",
            name: "drop of blood",
            keywords: ["blood", "drop", "medical"]
        },
        {
            emoji: "💊",
            name: "pill",
            keywords: ["pill", "medicine", "drug"]
        },
        {
            emoji: "🩹",
            name: "adhesive bandage",
            keywords: ["bandage", "band-aid", "hurt"]
        },
        {
            emoji: "🩺",
            name: "stethoscope",
            keywords: ["stethoscope", "doctor", "medical"]
        },
        {
            emoji: "🚪",
            name: "door",
            keywords: ["door", "entrance", "exit"]
        },
        {
            emoji: "🛗",
            name: "elevator",
            keywords: ["elevator", "lift", "up"]
        },
        {
            emoji: "🪞",
            name: "mirror",
            keywords: ["mirror", "reflection", "look"]
        },
        {
            emoji: "🪟",
            name: "window",
            keywords: ["window", "view", "glass"]
        },
        {
            emoji: "🛏️",
            name: "bed",
            keywords: ["bed", "sleep", "rest"]
        },
        {
            emoji: "🛋️",
            name: "couch and lamp",
            keywords: ["couch", "sofa", "furniture"]
        },
        {
            emoji: "🪑",
            name: "chair",
            keywords: ["chair", "sit", "furniture"]
        },
        {
            emoji: "🚽",
            name: "toilet",
            keywords: ["toilet", "bathroom", "wc"]
        },
        {
            emoji: "🪠",
            name: "plunger",
            keywords: ["plunger", "toilet", "unclog"]
        },
        {
            emoji: "🚿",
            name: "shower",
            keywords: ["shower", "bath", "clean"]
        },
        {
            emoji: "🛁",
            name: "bathtub",
            keywords: ["bathtub", "bath", "relax"]
        },
        {
            emoji: "🪤",
            name: "mouse trap",
            keywords: ["trap", "mouse", "catch"]
        },
        {
            emoji: "🪒",
            name: "razor",
            keywords: ["razor", "shave", "blade"]
        },
        {
            emoji: "🧴",
            name: "lotion bottle",
            keywords: ["lotion", "bottle", "cosmetic"]
        },
        {
            emoji: "🧷",
            name: "safety pin",
            keywords: ["safety pin", "pin", "attach"]
        },
        {
            emoji: "🧹",
            name: "broom",
            keywords: ["broom", "sweep", "clean"]
        },
        {
            emoji: "🧺",
            name: "basket",
            keywords: ["basket", "carry", "storage"]
        },
        {
            emoji: "🧻",
            name: "roll of paper",
            keywords: ["toilet paper", "paper", "roll"]
        },
        {
            emoji: "🪣",
            name: "bucket",
            keywords: ["bucket", "water", "carry"]
        },
        {
            emoji: "🧼",
            name: "soap",
            keywords: ["soap", "clean", "wash"]
        },
        {
            emoji: "🪥",
            name: "toothbrush",
            keywords: ["toothbrush", "teeth", "clean"]
        },
        {
            emoji: "🧽",
            name: "sponge",
            keywords: ["sponge", "clean", "wash"]
        },
        {
            emoji: "🧯",
            name: "fire extinguisher",
            keywords: ["fire extinguisher", "safety", "emergency"]
        },
        {
            emoji: "🛒",
            name: "shopping cart",
            keywords: ["shopping", "cart", "buy"]
        },
        {
            emoji: "🚬",
            name: "cigarette",
            keywords: ["cigarette", "smoke", "tobacco"]
        },
        {
            emoji: "⚰️",
            name: "coffin",
            keywords: ["coffin", "death", "funeral"]
        },
        {
            emoji: "🪦",
            name: "headstone",
            keywords: ["headstone", "grave", "death"]
        },
        {
            emoji: "⚱️",
            name: "funeral urn",
            keywords: ["urn", "ashes", "death"]
        },
        {
            emoji: "🗿",
            name: "moai",
            keywords: ["moai", "easter island", "statue"]
        },
        {
            emoji: "🪧",
            name: "placard",
            keywords: ["placard", "sign", "protest"]
        },

        // Symbols
        {
            emoji: "🏧",
            name: "ATM sign",
            keywords: ["atm", "bank", "money"]
        },
        {
            emoji: "🚮",
            name: "litter in bin sign",
            keywords: ["trash", "bin", "clean"]
        },
        {
            emoji: "🚰",
            name: "potable water",
            keywords: ["water", "drink", "fountain"]
        },
        {
            emoji: "♿",
            name: "wheelchair symbol",
            keywords: ["wheelchair", "accessible", "disabled"]
        },
        {
            emoji: "🚹",
            name: "men's room",
            keywords: ["men", "bathroom", "restroom"]
        },
        {
            emoji: "🚺",
            name: "women's room",
            keywords: ["women", "bathroom", "restroom"]
        },
        {
            emoji: "🚻",
            name: "restroom",
            keywords: ["restroom", "bathroom", "toilet"]
        },
        {
            emoji: "🚼",
            name: "baby symbol",
            keywords: ["baby", "infant", "child"]
        },
        {
            emoji: "🚾",
            name: "water closet",
            keywords: ["wc", "toilet", "bathroom"]
        },
        {
            emoji: "🛂",
            name: "passport control",
            keywords: ["passport", "border", "customs"]
        },
        {
            emoji: "🛃",
            name: "customs",
            keywords: ["customs", "border", "airport"]
        },
        {
            emoji: "🛄",
            name: "baggage claim",
            keywords: ["baggage", "luggage", "airport"]
        },
        {
            emoji: "🛅",
            name: "left luggage",
            keywords: ["luggage", "storage", "airport"]
        },
        {
            emoji: "⚠️",
            name: "warning",
            keywords: ["warning", "caution", "danger"]
        },
        {
            emoji: "🚸",
            name: "children crossing",
            keywords: ["children", "crossing", "school"]
        },
        {
            emoji: "⛔",
            name: "no entry",
            keywords: ["no entry", "stop", "forbidden"]
        },
        {
            emoji: "🚫",
            name: "prohibited",
            keywords: ["no", "forbidden", "stop"]
        },
        {
            emoji: "🚳",
            name: "no bicycles",
            keywords: ["no bikes", "forbidden", "cycling"]
        },
        {
            emoji: "🚭",
            name: "no smoking",
            keywords: ["no smoking", "forbidden", "cigarette"]
        },
        {
            emoji: "🚯",
            name: "no littering",
            keywords: ["no litter", "clean", "trash"]
        },
        {
            emoji: "🚱",
            name: "non-potable water",
            keywords: ["no water", "not drinking", "unsafe"]
        },
        {
            emoji: "🚷",
            name: "no pedestrians",
            keywords: ["no walking", "forbidden", "pedestrian"]
        },
        {
            emoji: "📵",
            name: "no mobile phones",
            keywords: ["no phones", "quiet", "forbidden"]
        },
        {
            emoji: "🔞",
            name: "no one under eighteen",
            keywords: ["18+", "adult", "mature"]
        },
        {
            emoji: "☢️",
            name: "radioactive",
            keywords: ["radioactive", "nuclear", "danger"]
        },
        {
            emoji: "☣️",
            name: "biohazard",
            keywords: ["biohazard", "danger", "toxic"]
        },
        {
            emoji: "⬆️",
            name: "up arrow",
            keywords: ["up", "arrow", "direction"]
        },
        {
            emoji: "↗️",
            name: "up-right arrow",
            keywords: ["up right", "arrow", "diagonal"]
        },
        {
            emoji: "➡️",
            name: "right arrow",
            keywords: ["right", "arrow", "direction"]
        },
        {
            emoji: "↘️",
            name: "down-right arrow",
            keywords: ["down right", "arrow", "diagonal"]
        },
        {
            emoji: "⬇️",
            name: "down arrow",
            keywords: ["down", "arrow", "direction"]
        },
        {
            emoji: "↙️",
            name: "down-left arrow",
            keywords: ["down left", "arrow", "diagonal"]
        },
        {
            emoji: "⬅️",
            name: "left arrow",
            keywords: ["left", "arrow", "direction"]
        },
        {
            emoji: "↖️",
            name: "up-left arrow",
            keywords: ["up left", "arrow", "diagonal"]
        },
        {
            emoji: "↕️",
            name: "up-down arrow",
            keywords: ["up down", "arrow", "vertical"]
        },
        {
            emoji: "↔️",
            name: "left-right arrow",
            keywords: ["left right", "arrow", "horizontal"]
        },
        {
            emoji: "↩️",
            name: "right arrow curving left",
            keywords: ["return", "back", "undo"]
        },
        {
            emoji: "↪️",
            name: "left arrow curving right",
            keywords: ["forward", "next", "redo"]
        },
        {
            emoji: "⤴️",
            name: "right arrow curving up",
            keywords: ["up", "curve", "arrow"]
        },
        {
            emoji: "⤵️",
            name: "right arrow curving down",
            keywords: ["down", "curve", "arrow"]
        },
        {
            emoji: "🔃",
            name: "clockwise vertical arrows",
            keywords: ["refresh", "reload", "clockwise"]
        },
        {
            emoji: "🔄",
            name: "counterclockwise arrows button",
            keywords: ["refresh", "reload", "counterclockwise"]
        },
        {
            emoji: "🔙",
            name: "BACK arrow",
            keywords: ["back", "return", "previous"]
        },
        {
            emoji: "🔚",
            name: "END arrow",
            keywords: ["end", "finish", "stop"]
        },
        {
            emoji: "🔛",
            name: "ON! arrow",
            keywords: ["on", "start", "activate"]
        },
        {
            emoji: "🔜",
            name: "SOON arrow",
            keywords: ["soon", "coming", "next"]
        },
        {
            emoji: "🔝",
            name: "TOP arrow",
            keywords: ["top", "up", "best"]
        },
        {
            emoji: "🛐",
            name: "place of worship",
            keywords: ["worship", "religion", "pray"]
        },
        {
            emoji: "⚛️",
            name: "atom symbol",
            keywords: ["atom", "science", "physics"]
        },
        {
            emoji: "🕉️",
            name: "om",
            keywords: ["om", "hindu", "meditation"]
        },
        {
            emoji: "✡️",
            name: "star of David",
            keywords: ["star of david", "jewish", "judaism"]
        },
        {
            emoji: "☸️",
            name: "wheel of dharma",
            keywords: ["dharma", "buddhist", "wheel"]
        },
        {
            emoji: "☯️",
            name: "yin yang",
            keywords: ["yin yang", "balance", "tao"]
        },
        {
            emoji: "✝️",
            name: "latin cross",
            keywords: ["cross", "christian", "religion"]
        },
        {
            emoji: "☦️",
            name: "orthodox cross",
            keywords: ["orthodox", "cross", "christian"]
        },
        {
            emoji: "☪️",
            name: "star and crescent",
            keywords: ["islam", "muslim", "crescent"]
        },
        {
            emoji: "☮️",
            name: "peace symbol",
            keywords: ["peace", "love", "hippie"]
        },
        {
            emoji: "🕎",
            name: "menorah",
            keywords: ["menorah", "jewish", "hanukkah"]
        },
        {
            emoji: "🔯",
            name: "dotted six-pointed star",
            keywords: ["star", "six pointed", "jewish"]
        },
        {
            emoji: "♈",
            name: "Aries",
            keywords: ["aries", "zodiac", "ram"]
        },
        {
            emoji: "♉",
            name: "Taurus",
            keywords: ["taurus", "zodiac", "bull"]
        },
        {
            emoji: "♊",
            name: "Gemini",
            keywords: ["gemini", "zodiac", "twins"]
        },
        {
            emoji: "♋",
            name: "Cancer",
            keywords: ["cancer", "zodiac", "crab"]
        },
        {
            emoji: "♌",
            name: "Leo",
            keywords: ["leo", "zodiac", "lion"]
        },
        {
            emoji: "♍",
            name: "Virgo",
            keywords: ["virgo", "zodiac", "maiden"]
        },
        {
            emoji: "♎",
            name: "Libra",
            keywords: ["libra", "zodiac", "scales"]
        },
        {
            emoji: "♏",
            name: "Scorpio",
            keywords: ["scorpio", "zodiac", "scorpion"]
        },
        {
            emoji: "♐",
            name: "Sagittarius",
            keywords: ["sagittarius", "zodiac", "archer"]
        },
        {
            emoji: "♑",
            name: "Capricorn",
            keywords: ["capricorn", "zodiac", "goat"]
        },
        {
            emoji: "♒",
            name: "Aquarius",
            keywords: ["aquarius", "zodiac", "water bearer"]
        },
        {
            emoji: "♓",
            name: "Pisces",
            keywords: ["pisces", "zodiac", "fish"]
        },
        {
            emoji: "⛎",
            name: "Ophiuchus",
            keywords: ["ophiuchus", "zodiac", "serpent bearer"]
        },
        {
            emoji: "🔀",
            name: "twisted rightwards arrows",
            keywords: ["shuffle", "random", "mix"]
        },
        {
            emoji: "🔁",
            name: "repeat button",
            keywords: ["repeat", "loop", "again"]
        },
        {
            emoji: "🔂",
            name: "repeat single button",
            keywords: ["repeat one", "loop", "single"]
        },
        {
            emoji: "▶️",
            name: "play button",
            keywords: ["play", "start", "music"]
        },
        {
            emoji: "⏩",
            name: "fast-forward button",
            keywords: ["fast forward", "skip", "next"]
        },
        {
            emoji: "⏭️",
            name: "next track button",
            keywords: ["next", "skip", "forward"]
        },
        {
            emoji: "⏯️",
            name: "play or pause button",
            keywords: ["play pause", "toggle", "music"]
        },
        {
            emoji: "◀️",
            name: "reverse button",
            keywords: ["reverse", "back", "rewind"]
        },
        {
            emoji: "⏪",
            name: "fast reverse button",
            keywords: ["rewind", "fast back", "previous"]
        },
        {
            emoji: "⏮️",
            name: "last track button",
            keywords: ["previous", "back", "last"]
        },
        {
            emoji: "🔼",
            name: "upwards button",
            keywords: ["up", "triangle", "increase"]
        },
        {
            emoji: "⏫",
            name: "fast up button",
            keywords: ["fast up", "double up", "increase"]
        },
        {
            emoji: "🔽",
            name: "downwards button",
            keywords: ["down", "triangle", "decrease"]
        },
        {
            emoji: "⏬",
            name: "fast down button",
            keywords: ["fast down", "double down", "decrease"]
        },
        {
            emoji: "⏸️",
            name: "pause button",
            keywords: ["pause", "stop", "wait"]
        },
        {
            emoji: "⏹️",
            name: "stop button",
            keywords: ["stop", "end", "halt"]
        },
        {
            emoji: "⏺️",
            name: "record button",
            keywords: ["record", "capture", "save"]
        },
        {
            emoji: "⏏️",
            name: "eject button",
            keywords: ["eject", "remove", "out"]
        },
        {
            emoji: "🎦",
            name: "cinema",
            keywords: ["cinema", "movie", "film"]
        },
        {
            emoji: "🔅",
            name: "dim button",
            keywords: ["dim", "brightness down", "dark"]
        },
        {
            emoji: "🔆",
            name: "bright button",
            keywords: ["bright", "brightness up", "light"]
        },
        {
            emoji: "📶",
            name: "antenna bars",
            keywords: ["signal", "bars", "reception"]
        },
        {
            emoji: "📳",
            name: "vibration mode",
            keywords: ["vibrate", "silent", "phone"]
        },
        {
            emoji: "📴",
            name: "mobile phone off",
            keywords: ["phone off", "no signal", "airplane mode"]
        },
        {
            emoji: "♀️",
            name: "female sign",
            keywords: ["female", "woman", "gender"]
        },
        {
            emoji: "♂️",
            name: "male sign",
            keywords: ["male", "man", "gender"]
        },
        {
            emoji: "⚧️",
            name: "transgender symbol",
            keywords: ["transgender", "trans", "gender"]
        },
        {
            emoji: "✖️",
            name: "multiply",
            keywords: ["multiply", "times", "x"]
        },
        {
            emoji: "➕",
            name: "plus",
            keywords: ["plus", "add", "positive"]
        },
        {
            emoji: "➖",
            name: "minus",
            keywords: ["minus", "subtract", "negative"]
        },
        {
            emoji: "➗",
            name: "divide",
            keywords: ["divide", "division", "math"]
        },
        {
            emoji: "♾️",
            name: "infinity",
            keywords: ["infinity", "endless", "forever"]
        },
        {
            emoji: "‼️",
            name: "double exclamation mark",
            keywords: ["exclamation", "surprise", "wow"]
        },
        {
            emoji: "⁉️",
            name: "exclamation question mark",
            keywords: ["interrobang", "surprise", "question"]
        },
        {
            emoji: "❓",
            name: "question mark",
            keywords: ["question", "ask", "wonder"]
        },
        {
            emoji: "❔",
            name: "white question mark",
            keywords: ["question", "ask", "help"]
        },
        {
            emoji: "❕",
            name: "white exclamation mark",
            keywords: ["exclamation", "surprise", "attention"]
        },
        {
            emoji: "❗",
            name: "exclamation mark",
            keywords: ["exclamation", "surprise", "important"]
        },
        {
            emoji: "〰️",
            name: "wavy dash",
            keywords: ["wavy", "dash", "tilde"]
        },
        {
            emoji: "💱",
            name: "currency exchange",
            keywords: ["currency", "exchange", "money"]
        },
        {
            emoji: "💲",
            name: "heavy dollar sign",
            keywords: ["dollar", "money", "currency"]
        },
        {
            emoji: "⚕️",
            name: "medical symbol",
            keywords: ["medical", "health", "doctor"]
        },
        {
            emoji: "♻️",
            name: "recycling symbol",
            keywords: ["recycle", "green", "environment"]
        },
        {
            emoji: "⚜️",
            name: "fleur-de-lis",
            keywords: ["fleur de lis", "french", "royal"]
        },
        {
            emoji: "🔱",
            name: "trident emblem",
            keywords: ["trident", "poseidon", "fork"]
        },
        {
            emoji: "📛",
            name: "name badge",
            keywords: ["name tag", "badge", "hello"]
        },
        {
            emoji: "🔰",
            name: "Japanese symbol for beginner",
            keywords: ["beginner", "japanese", "new"]
        },
        {
            emoji: "⭕",
            name: "red circle",
            keywords: ["circle", "red", "correct"]
        },
        {
            emoji: "✅",
            name: "check mark button",
            keywords: ["check", "correct", "yes"]
        },
        {
            emoji: "☑️",
            name: "check box with check",
            keywords: ["checkbox", "check", "done"]
        },
        {
            emoji: "✔️",
            name: "check mark",
            keywords: ["check", "correct", "tick"]
        },
        {
            emoji: "❌",
            name: "cross mark",
            keywords: ["x", "wrong", "no"]
        },
        {
            emoji: "❎",
            name: "cross mark button",
            keywords: ["x", "wrong", "cancel"]
        },
        {
            emoji: "➰",
            name: "curly loop",
            keywords: ["loop", "curly", "swirl"]
        },
        {
            emoji: "➿",
            name: "double curly loop",
            keywords: ["loop", "double", "curly"]
        },
        {
            emoji: "〽️",
            name: "part alternation mark",
            keywords: ["part", "alternation", "japanese"]
        },
        {
            emoji: "✳️",
            name: "eight-spoked asterisk",
            keywords: ["asterisk", "star", "sparkle"]
        },
        {
            emoji: "✴️",
            name: "eight-pointed star",
            keywords: ["star", "sparkle", "eight pointed"]
        },
        {
            emoji: "❇️",
            name: "sparkle",
            keywords: ["sparkle", "star", "shine"]
        },
        {
            emoji: "©️",
            name: "copyright",
            keywords: ["copyright", "c", "legal"]
        },
        {
            emoji: "®️",
            name: "registered",
            keywords: ["registered", "r", "trademark"]
        },
        {
            emoji: "™️",
            name: "trade mark",
            keywords: ["trademark", "tm", "brand"]
        },
        {
            emoji: "#️⃣",
            name: "keycap: #",
            keywords: ["hashtag", "number", "pound"]
        },
        {
            emoji: "*️⃣",
            name: "keycap: *",
            keywords: ["asterisk", "star", "multiply"]
        },
        {
            emoji: "0️⃣",
            name: "keycap: 0",
            keywords: ["zero", "0", "number"]
        },
        {
            emoji: "1️⃣",
            name: "keycap: 1",
            keywords: ["one", "1", "number"]
        },
        {
            emoji: "2️⃣",
            name: "keycap: 2",
            keywords: ["two", "2", "number"]
        },
        {
            emoji: "3️⃣",
            name: "keycap: 3",
            keywords: ["three", "3", "number"]
        },
        {
            emoji: "4️⃣",
            name: "keycap: 4",
            keywords: ["four", "4", "number"]
        },
        {
            emoji: "5️⃣",
            name: "keycap: 5",
            keywords: ["five", "5", "number"]
        },
        {
            emoji: "6️⃣",
            name: "keycap: 6",
            keywords: ["six", "6", "number"]
        },
        {
            emoji: "7️⃣",
            name: "keycap: 7",
            keywords: ["seven", "7", "number"]
        },
        {
            emoji: "8️⃣",
            name: "keycap: 8",
            keywords: ["eight", "8", "number"]
        },
        {
            emoji: "9️⃣",
            name: "keycap: 9",
            keywords: ["nine", "9", "number"]
        },
        {
            emoji: "🔟",
            name: "keycap: 10",
            keywords: ["ten", "10", "number"]
        },
        {
            emoji: "🔠",
            name: "input latin uppercase",
            keywords: ["uppercase", "capital", "abc"]
        },
        {
            emoji: "🔡",
            name: "input latin lowercase",
            keywords: ["lowercase", "small", "abc"]
        },
        {
            emoji: "🔢",
            name: "input numbers",
            keywords: ["numbers", "123", "digits"]
        },
        {
            emoji: "🔣",
            name: "input symbols",
            keywords: ["symbols", "special", "characters"]
        },
        {
            emoji: "🔤",
            name: "input latin letters",
            keywords: ["letters", "alphabet", "abc"]
        },
        {
            emoji: "🅰️",
            name: "A button (blood type)",
            keywords: ["a", "blood type", "button"]
        },
        {
            emoji: "🆎",
            name: "AB button (blood type)",
            keywords: ["ab", "blood type", "button"]
        },
        {
            emoji: "🅱️",
            name: "B button (blood type)",
            keywords: ["b", "blood type", "button"]
        },
        {
            emoji: "🆑",
            name: "CL button",
            keywords: ["cl", "clear", "button"]
        },
        {
            emoji: "🆒",
            name: "COOL button",
            keywords: ["cool", "awesome", "button"]
        },
        {
            emoji: "🆓",
            name: "FREE button",
            keywords: ["free", "no cost", "button"]
        },
        {
            emoji: "ℹ️",
            name: "information",
            keywords: ["info", "information", "i"]
        },
        {
            emoji: "🆔",
            name: "ID button",
            keywords: ["id", "identification", "button"]
        },
        {
            emoji: "Ⓜ️",
            name: "circled M",
            keywords: ["m", "metro", "circle"]
        },
        {
            emoji: "🆕",
            name: "NEW button",
            keywords: ["new", "fresh", "button"]
        },
        {
            emoji: "🆖",
            name: "NG button",
            keywords: ["ng", "no good", "button"]
        },
        {
            emoji: "🅾️",
            name: "O button (blood type)",
            keywords: ["o", "blood type", "button"]
        },
        {
            emoji: "🆗",
            name: "OK button",
            keywords: ["ok", "okay", "button"]
        },
        {
            emoji: "🅿️",
            name: "P button",
            keywords: ["p", "parking", "button"]
        },
        {
            emoji: "🆘",
            name: "SOS button",
            keywords: ["sos", "help", "emergency"]
        },
        {
            emoji: "🆙",
            name: "UP! button",
            keywords: ["up", "increase", "button"]
        },
        {
            emoji: "🆚",
            name: "VS button",
            keywords: ["vs", "versus", "against"]
        },
        {
            emoji: "🈁",
            name: `Japanese "here" button`,
            keywords: ["here", "japanese", "koko"]
        },
        {
            emoji: "🈂️",
            name: `Japanese "service charge" button`,
            keywords: ["service", "japanese", "sa"]
        },
        {
            emoji: "🈷️",
            name: `Japanese "monthly amount" button`,
            keywords: ["monthly", "japanese", "tsuki"]
        },
        {
            emoji: "🈶",
            name: `Japanese "not free of charge" button`,
            keywords: ["not free", "japanese", "yu"]
        },
        {
            emoji: "🈯",
            name: `Japanese "reserved" button`,
            keywords: ["reserved", "japanese", "shi"]
        },
        {
            emoji: "🉐",
            name: `Japanese "bargain" button`,
            keywords: ["bargain", "japanese", "de"]
        },
        {
            emoji: "🈹",
            name: `Japanese "discount" button`,
            keywords: ["discount", "japanese", "wari"]
        },
        {
            emoji: "🈚",
            name: `Japanese "free of charge" button`,
            keywords: ["free", "japanese", "mu"]
        },
        {
            emoji: "🈲",
            name: `Japanese "prohibited" button`,
            keywords: ["prohibited", "japanese", "kin"]
        },
        {
            emoji: "🉑",
            name: `Japanese "acceptable" button`,
            keywords: ["acceptable", "japanese", "ka"]
        },
        {
            emoji: "🈸",
            name: `Japanese "application" button`,
            keywords: ["application", "japanese", "shin"]
        },
        {
            emoji: "🈴",
            name: `Japanese "passing grade" button`,
            keywords: ["passing", "japanese", "go"]
        },
        {
            emoji: "🈳",
            name: `Japanese "vacancy" button`,
            keywords: ["vacancy", "japanese", "ku"]
        },
        {
            emoji: "㊗️",
            name: `Japanese "congratulations" button`,
            keywords: ["congratulations", "japanese", "iwai"]
        },
        {
            emoji: "㊙️",
            name: `Japanese "secret" button`,
            keywords: ["secret", "japanese", "himitsu"]
        },
        {
            emoji: "🈺",
            name: `Japanese "open for business" button`,
            keywords: ["open", "japanese", "eigyo"]
        },
        {
            emoji: "🈵",
            name: `Japanese "no vacancy" button`,
            keywords: ["no vacancy", "japanese", "man"]
        },
        {
            emoji: "🔴",
            name: "red circle",
            keywords: ["red", "circle", "dot"]
        },
        {
            emoji: "🟠",
            name: "orange circle",
            keywords: ["orange", "circle", "dot"]
        },
        {
            emoji: "🟡",
            name: "yellow circle",
            keywords: ["yellow", "circle", "dot"]
        },
        {
            emoji: "🟢",
            name: "green circle",
            keywords: ["green", "circle", "dot"]
        },
        {
            emoji: "🔵",
            name: "blue circle",
            keywords: ["blue", "circle", "dot"]
        },
        {
            emoji: "🟣",
            name: "purple circle",
            keywords: ["purple", "circle", "dot"]
        },
        {
            emoji: "🟤",
            name: "brown circle",
            keywords: ["brown", "circle", "dot"]
        },
        {
            emoji: "⚫",
            name: "black circle",
            keywords: ["black", "circle", "dot"]
        },
        {
            emoji: "⚪",
            name: "white circle",
            keywords: ["white", "circle", "dot"]
        },
        {
            emoji: "🟥",
            name: "red square",
            keywords: ["red", "square", "block"]
        },
        {
            emoji: "🟧",
            name: "orange square",
            keywords: ["orange", "square", "block"]
        },
        {
            emoji: "🟨",
            name: "yellow square",
            keywords: ["yellow", "square", "block"]
        },
        {
            emoji: "🟩",
            name: "green square",
            keywords: ["green", "square", "block"]
        },
        {
            emoji: "🟦",
            name: "blue square",
            keywords: ["blue", "square", "block"]
        },
        {
            emoji: "🟪",
            name: "purple square",
            keywords: ["purple", "square", "block"]
        },
        {
            emoji: "🟫",
            name: "brown square",
            keywords: ["brown", "square", "block"]
        },
        {
            emoji: "⬛",
            name: "black large square",
            keywords: ["black", "square", "large"]
        },
        {
            emoji: "⬜",
            name: "white large square",
            keywords: ["white", "square", "large"]
        },
        {
            emoji: "◼️",
            name: "black medium square",
            keywords: ["black", "square", "medium"]
        },
        {
            emoji: "◻️",
            name: "white medium square",
            keywords: ["white", "square", "medium"]
        },
        {
            emoji: "◾",
            name: "black medium-small square",
            keywords: ["black", "square", "small"]
        },
        {
            emoji: "◽",
            name: "white medium-small square",
            keywords: ["white", "square", "small"]
        },
        {
            emoji: "▪️",
            name: "black small square",
            keywords: ["black", "square", "tiny"]
        },
        {
            emoji: "▫️",
            name: "white small square",
            keywords: ["white", "square", "tiny"]
        },
        {
            emoji: "🔶",
            name: "large orange diamond",
            keywords: ["orange", "diamond", "large"]
        },
        {
            emoji: "🔷",
            name: "large blue diamond",
            keywords: ["blue", "diamond", "large"]
        },
        {
            emoji: "🔸",
            name: "small orange diamond",
            keywords: ["orange", "diamond", "small"]
        },
        {
            emoji: "🔹",
            name: "small blue diamond",
            keywords: ["blue", "diamond", "small"]
        },
        {
            emoji: "🔺",
            name: "red triangle pointed up",
            keywords: ["red", "triangle", "up"]
        },
        {
            emoji: "🔻",
            name: "red triangle pointed down",
            keywords: ["red", "triangle", "down"]
        },
        {
            emoji: "💠",
            name: "diamond with a dot",
            keywords: ["diamond", "dot", "blue"]
        },
        {
            emoji: "🔘",
            name: "radio button",
            keywords: ["radio", "button", "select"]
        },
        {
            emoji: "🔳",
            name: "white square button",
            keywords: ["white", "square", "button"]
        },
        {
            emoji: "🔲",
            name: "black square button",
            keywords: ["black", "square", "button"]
        },

        // Flags (just a few common ones)
        {
            emoji: "🏁",
            name: "chequered flag",
            keywords: ["checkered", "race", "finish"]
        },
        {
            emoji: "🚩",
            name: "triangular flag",
            keywords: ["flag", "red", "warning"]
        },
        {
            emoji: "🎌",
            name: "crossed flags",
            keywords: ["japan", "flags", "crossed"]
        },
        {
            emoji: "🏴",
            name: "black flag",
            keywords: ["black", "flag", "pirate"]
        },
        {
            emoji: "🏳️",
            name: "white flag",
            keywords: ["white", "flag", "surrender"]
        },
        {
            emoji: "🏳️‍🌈",
            name: "rainbow flag",
            keywords: ["rainbow", "pride", "lgbt"]
        },
        {
            emoji: "🏳️‍⚧️",
            name: "transgender flag",
            keywords: ["transgender", "trans", "flag"]
        },
        {
            emoji: "🏴‍☠️",
            name: "pirate flag",
            keywords: ["pirate", "skull", "jolly roger"]
        },
        {
            emoji: "🇺🇸",
            name: "flag: United States",
            keywords: ["usa", "america", "flag"]
        },
        {
            emoji: "🇬🇧",
            name: "flag: United Kingdom",
            keywords: ["uk", "britain", "flag"]
        },
        {
            emoji: "🇨🇦",
            name: "flag: Canada",
            keywords: ["canada", "maple leaf", "flag"]
        },
        {
            emoji: "🇫🇷",
            name: "flag: France",
            keywords: ["france", "french", "flag"]
        },
        {
            emoji: "🇩🇪",
            name: "flag: Germany",
            keywords: ["germany", "german", "flag"]
        },
        {
            emoji: "🇯🇵",
            name: "flag: Japan",
            keywords: ["japan", "japanese", "flag"]
        },
        {
            emoji: "🇨🇳",
            name: "flag: China",
            keywords: ["china", "chinese", "flag"]
        },
        {
            emoji: "🇮🇳",
            name: "flag: India",
            keywords: ["india", "indian", "flag"]
        },
        {
            emoji: "🇧🇷",
            name: "flag: Brazil",
            keywords: ["brazil", "brazilian", "flag"]
        },
        {
            emoji: "🇦🇺",
            name: "flag: Australia",
            keywords: ["australia", "australian", "flag"]
        },
        {
            emoji: "🇷🇺",
            name: "flag: Russia",
            keywords: ["russia", "russian", "flag"]
        },
        {
            emoji: "🇰🇷",
            name: "flag: South Korea",
            keywords: ["south korea", "korean", "flag"]
        },
        {
            emoji: "🇮🇹",
            name: "flag: Italy",
            keywords: ["italy", "italian", "flag"]
        },
        {
            emoji: "🇪🇸",
            name: "flag: Spain",
            keywords: ["spain", "spanish", "flag"]
        },
        {
            emoji: "🇲🇽",
            name: "flag: Mexico",
            keywords: ["mexico", "mexican", "flag"]
        },
        {
            emoji: "🇳🇱",
            name: "flag: Netherlands",
            keywords: ["netherlands", "dutch", "flag"]
        },
        {
            emoji: "🇸🇪",
            name: "flag: Sweden",
            keywords: ["sweden", "swedish", "flag"]
        },
        {
            emoji: "🇳🇴",
            name: "flag: Norway",
            keywords: ["norway", "norwegian", "flag"]
        },
        {
            emoji: "🇩🇰",
            name: "flag: Denmark",
            keywords: ["denmark", "danish", "flag"]
        },
        {
            emoji: "🇫🇮",
            name: "flag: Finland",
            keywords: ["finland", "finnish", "flag"]
        },
        {
            emoji: "🇨🇭",
            name: "flag: Switzerland",
            keywords: ["switzerland", "swiss", "flag"]
        },
        {
            emoji: "🇦🇹",
            name: "flag: Austria",
            keywords: ["austria", "austrian", "flag"]
        },
        {
            emoji: "🇧🇪",
            name: "flag: Belgium",
            keywords: ["belgium", "belgian", "flag"]
        },
        {
            emoji: "🇵🇹",
            name: "flag: Portugal",
            keywords: ["portugal", "portuguese", "flag"]
        },
        {
            emoji: "🇬🇷",
            name: "flag: Greece",
            keywords: ["greece", "greek", "flag"]
        },
        {
            emoji: "🇹🇷",
            name: "flag: Turkey",
            keywords: ["turkey", "turkish", "flag"]
        },
        {
            emoji: "🇮🇱",
            name: "flag: Israel",
            keywords: ["israel", "israeli", "flag"]
        },
        {
            emoji: "🇪🇬",
            name: "flag: Egypt",
            keywords: ["egypt", "egyptian", "flag"]
        },
        {
            emoji: "🇿🇦",
            name: "flag: South Africa",
            keywords: ["south africa", "flag"]
        },
        {
            emoji: "🇳🇬",
            name: "flag: Nigeria",
            keywords: ["nigeria", "nigerian", "flag"]
        },
        {
            emoji: "🇰🇪",
            name: "flag: Kenya",
            keywords: ["kenya", "kenyan", "flag"]
        },
        {
            emoji: "🇦🇷",
            name: "flag: Argentina",
            keywords: ["argentina", "argentinian", "flag"]
        },
        {
            emoji: "🇨🇱",
            name: "flag: Chile",
            keywords: ["chile", "chilean", "flag"]
        },
        {
            emoji: "🇨🇴",
            name: "flag: Colombia",
            keywords: ["colombia", "colombian", "flag"]
        },
        {
            emoji: "🇵🇪",
            name: "flag: Peru",
            keywords: ["peru", "peruvian", "flag"]
        },
        {
            emoji: "🇻🇪",
            name: "flag: Venezuela",
            keywords: ["venezuela", "venezuelan", "flag"]
        },
        {
            emoji: "🇺🇾",
            name: "flag: Uruguay",
            keywords: ["uruguay", "uruguayan", "flag"]
        },
        {
            emoji: "🇪🇨",
            name: "flag: Ecuador",
            keywords: ["ecuador", "ecuadorian", "flag"]
        },
        {
            emoji: "🇧🇴",
            name: "flag: Bolivia",
            keywords: ["bolivia", "bolivian", "flag"]
        },
        {
            emoji: "🇵🇾",
            name: "flag: Paraguay",
            keywords: ["paraguay", "paraguayan", "flag"]
        },
        {
            emoji: "🇬🇾",
            name: "flag: Guyana",
            keywords: ["guyana", "guyanese", "flag"]
        },
        {
            emoji: "🇸🇷",
            name: "flag: Suriname",
            keywords: ["suriname", "surinamese", "flag"]
        },
        {
            emoji: "🇺🇿",
            name: "flag: Uzbekistan",
            keywords: ["uzbekistan", "uzbek", "flag"]
        },
        {
            emoji: "🇰🇿",
            name: "flag: Kazakhstan",
            keywords: ["kazakhstan", "kazakh", "flag"]
        },
        {
            emoji: "🇰🇬",
            name: "flag: Kyrgyzstan",
            keywords: ["kyrgyzstan", "kyrgyz", "flag"]
        },
        {
            emoji: "🇹🇯",
            name: "flag: Tajikistan",
            keywords: ["tajikistan", "tajik", "flag"]
        },
        {
            emoji: "🇹🇲",
            name: "flag: Turkmenistan",
            keywords: ["turkmenistan", "turkmen", "flag"]
        },
        {
            emoji: "🇦🇫",
            name: "flag: Afghanistan",
            keywords: ["afghanistan", "afghan", "flag"]
        },
        {
            emoji: "🇮🇷",
            name: "flag: Iran",
            keywords: ["iran", "iranian", "flag"]
        },
        {
            emoji: "🇮🇶",
            name: "flag: Iraq",
            keywords: ["iraq", "iraqi", "flag"]
        },
        {
            emoji: "🇸🇾",
            name: "flag: Syria",
            keywords: ["syria", "syrian", "flag"]
        },
        {
            emoji: "🇱🇧",
            name: "flag: Lebanon",
            keywords: ["lebanon", "lebanese", "flag"]
        },
        {
            emoji: "🇯🇴",
            name: "flag: Jordan",
            keywords: ["jordan", "jordanian", "flag"]
        },
        {
            emoji: "🇸🇦",
            name: "flag: Saudi Arabia",
            keywords: ["saudi arabia", "saudi", "flag"]
        },
        {
            emoji: "🇰🇼",
            name: "flag: Kuwait",
            keywords: ["kuwait", "kuwaiti", "flag"]
        },
        {
            emoji: "🇶🇦",
            name: "flag: Qatar",
            keywords: ["qatar", "qatari", "flag"]
        },
        {
            emoji: "🇧🇭",
            name: "flag: Bahrain",
            keywords: ["bahrain", "bahraini", "flag"]
        },
        {
            emoji: "🇦🇪",
            name: "flag: United Arab Emirates",
            keywords: ["uae", "emirates", "flag"]
        },
        {
            emoji: "🇴🇲",
            name: "flag: Oman",
            keywords: ["oman", "omani", "flag"]
        },
        {
            emoji: "🇾🇪",
            name: "flag: Yemen",
            keywords: ["yemen", "yemeni", "flag"]
        },
        {
            emoji: "🇵🇰",
            name: "flag: Pakistan",
            keywords: ["pakistan", "pakistani", "flag"]
        },
        {
            emoji: "🇧🇩",
            name: "flag: Bangladesh",
            keywords: ["bangladesh", "bangladeshi", "flag"]
        },
        {
            emoji: "🇱🇰",
            name: "flag: Sri Lanka",
            keywords: ["sri lanka", "sri lankan", "flag"]
        },
        {
            emoji: "🇲🇻",
            name: "flag: Maldives",
            keywords: ["maldives", "maldivian", "flag"]
        },
        {
            emoji: "🇳🇵",
            name: "flag: Nepal",
            keywords: ["nepal", "nepalese", "flag"]
        },
        {
            emoji: "🇧🇹",
            name: "flag: Bhutan",
            keywords: ["bhutan", "bhutanese", "flag"]
        },
        {
            emoji: "🇲🇲",
            name: "flag: Myanmar (Burma)",
            keywords: ["myanmar", "burma", "flag"]
        },
        {
            emoji: "🇹🇭",
            name: "flag: Thailand",
            keywords: ["thailand", "thai", "flag"]
        },
        {
            emoji: "🇱🇦",
            name: "flag: Laos",
            keywords: ["laos", "lao", "flag"]
        },
        {
            emoji: "🇰🇭",
            name: "flag: Cambodia",
            keywords: ["cambodia", "cambodian", "flag"]
        },
        {
            emoji: "🇻🇳",
            name: "flag: Vietnam",
            keywords: ["vietnam", "vietnamese", "flag"]
        },
        {
            emoji: "🇲🇾",
            name: "flag: Malaysia",
            keywords: ["malaysia", "malaysian", "flag"]
        },
        {
            emoji: "🇸🇬",
            name: "flag: Singapore",
            keywords: ["singapore", "singaporean", "flag"]
        },
        {
            emoji: "🇮🇩",
            name: "flag: Indonesia",
            keywords: ["indonesia", "indonesian", "flag"]
        },
        {
            emoji: "🇧🇳",
            name: "flag: Brunei",
            keywords: ["brunei", "bruneian", "flag"]
        },
        {
            emoji: "🇵🇭",
            name: "flag: Philippines",
            keywords: ["philippines", "filipino", "flag"]
        },
        {
            emoji: "🇹🇱",
            name: "flag: Timor-Leste",
            keywords: ["timor leste", "east timor", "flag"]
        },
        {
            emoji: "🇲🇳",
            name: "flag: Mongolia",
            keywords: ["mongolia", "mongolian", "flag"]
        },
        {
            emoji: "🇰🇵",
            name: "flag: North Korea",
            keywords: ["north korea", "flag"]
        },
        {
            emoji: "🇭🇰",
            name: "flag: Hong Kong SAR China",
            keywords: ["hong kong", "flag"]
        },
        {
            emoji: "🇲🇴",
            name: "flag: Macao SAR China",
            keywords: ["macao", "macau", "flag"]
        },
        {
            emoji: "🇹🇼",
            name: "flag: Taiwan",
            keywords: ["taiwan", "taiwanese", "flag"]
        }
    ]

    function search(query) {
        if (!query) {
            return emojis.slice(0, 40).map(item => ({
                        type: "emoji",
                        title: item.name,
                        subtitle: item.keywords.join(", "),
                        icon: item.emoji,
                        data: item.emoji
                    }));
        }

        const lowerQuery = query.toLowerCase();
        const matches = emojis.filter(item => {
            return item.name.toLowerCase().includes(lowerQuery) || item.keywords.some(keyword => keyword.toLowerCase().includes(lowerQuery));
        });

        return matches.slice(0, 40).map(item => ({
                    type: "emoji",
                    title: item.name,
                    subtitle: item.keywords.join(", "),
                    icon: item.emoji,
                    data: item.emoji
                }));
    }

    function execute(item) {
        copyProcess.text = item.data;
        copyProcess.running = true;
    }

    property var copyProcess: Process {
        property string text: ""
        command: ["wl-copy", text]
    }
}
