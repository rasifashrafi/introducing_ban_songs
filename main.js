var div = document.createElement("div");
div.style.width = "40vw";
div.style.top="0";
div.style.bottom="0";
div.style.left="0";
div.style.right="0";
div.style.margin="auto";
div.setAttribute = ("id","bg")
var para = document.createElement("p");
para.setAttribute= ("id","para");
para.innerHTML= "";
div.appendChild(para);
document.body.appendChild(div);

function syl(){
    var sound = document.getElementById("syl");
    var score = document.getElementById("lilbox")
    div.style.backgroundColor = "rgb(184, 16, 246)";
    para.innerHTML = "<h1>Subir Nondi</h1><br/> Born: November 30, 1953, <br/>	Sylhet, East Bengal (now Bangladesh)<br/>Genres:Folk <br/>Instruments:Vocal<br/>Years active:1970s-present<br/>Nationality: Bangladeshi"
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function bsl(){
    var sound = document.getElementById("barishal");
    var score = document.getElementById("lilbox")
    div.style.backgroundColor = "rgb(128, 1, 225)";
    para.innerHTML = "<h1>Abdul Latif </h1><br/> Born: 1927, <br/>Raipasha village, Barisal District, Bengal, British India <br/> Died: 26 February,2005(age 78) Dhaka, Bangladesh <br/> Resting place: Martyred Intellectuals' Graveyard, Mirpur, Dhaka <br/>Nationality: Bangladeshi"
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function ctg(){
    var sound = document.getElementById("ctg");
    var score = document.getElementById("lilbox")
    div.style.backgroundColor = "rgb(6, 96, 251)";
    para.innerHTML = "<h1>Ayub Bachchu</h1> <br/> Native name:আইয়ুব বাচ্চু <br/>Birth name:Robin<br/>Born:16 August 1962, Chittagong, East Pakistan, Pakistan (Now in Chattogram, Bangladesh)<br/>Died:18 October 2018 (aged 56), Dhaka, Bangladesh<br/>Genres:Hard rock, blues, soft,rock, alternative rock<br/>Occupation(s): Musician, singer-songwriter<br/>Instruments:Guitar, vocals, bass, keyboards<br/>Years active:1977–2018<br/>Labels:AB Kitchen<br/>Associated acts:Love Runs Blind, Feelings and Souls."
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function dhk(){
    var sound = document.getElementById("dhk");
    var score = document.getElementById("lilbox")
    div.style.backgroundColor = "rgb(97, 67, 165)";
    para.innerHTML = "<h1>Azam Khan</h1><br/>Mahbubul Haque Khan (28 February 1950 – 5 June 2011), known as Azam Khan, was a Bangladeshi Rock singer. He was the lead singer of the rock band Uchcharan, founded in the middle of 1973. He is often referred to by the 'রক গুরু [Master of Rock]'.Azam Khan was a Bangladeshi Freedom Fighter. He fought in Sector 2 under Brigadier Khaled Mosharraf in the Liberation war of Bangladesh in 1971.<br/>"
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function ran(){
    var sound = document.getElementById("ran");
    var score = document.getElementById("lilbox");
    div.style.backgroundColor = "rgb(76, 153, 0)";
    para.innerHTML = "<h1>Bari Siddiqui</h1><br/>Bari Siddiqui (15 November 1954 – 24 November 2017)<br/>Education: University of Dhaka <br/>Occupation: Singer, Actor <br/>Years Active: 1981-2017"
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function raj(){
    var sound = document.getElementById("raj");
    var score = document.getElementById("lilbox");
    div.style.backgroundColor = "rgb(255, 128, 0)";
    para.innerHTML = "<h1>Farida Parveen</h1><br/>Born:31 December 1954 (age 63)<br/>Origin:Natore District, East Bengal, Dominion of Pakistan <br/>Genres:Lalon, folk <br/>Occupation(s):singer <br/>Instruments:instrumental, vocal <br/>Years active:1968-present"
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function khu(){
    var sound = document.getElementById("khu");
    var score = document.getElementById("lilbox");
    div.style.backgroundColor = "rgb(255, 102, 102)";
    para.innerHTML = "<h1>Firoza Begum</h1><br/>Native name: ফিরোজা বেগম <br/> Born:28 July 1930 <br/> Faridpur, Bengal Presidency, British India <br/>Died:9 September 2014 (aged 84)<br/>Dhaka, Bangladesh <br/>Years active:1940–2014";
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function mym(){
    var sound = document.getElementById("mym");
    var score = document.getElementById("lilbox");
    div.style.backgroundColor = "rgb(255, 255, 0)";
    para.innerHTML = "<h1>Runa Laila</h1><br/>Born:17 November 1952 (age 66) <br/>Sylhet, East Bengal, Dominion of Pakistan (in present-day Bangladesh) <br/> Genres:Ghazal, fusion music, Pop <br/>Occupation(s):Playback singer<br/>Instruments:vocals<br/>Years active:1969–1991,2008–2010";
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function dha(){
    var sound = document.getElementById("dha");
    var score = document.getElementById("lilbox");
    div.style.backgroundColor = "rgb(255, 102, 255)";
    para.innerHTML = "<h1>Sabina Yasmin</h1><br/>Native name:সাবিনা ইয়াসমিন <br/>Born:1953 (age 64–65)<br/>Education:University of Dhaka<br/> Occupation:Singer<br/>Years active:1967-present";
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}

function rag(){
    var sound = document.getElementById("rag");
    var score = document.getElementById("lilbox");
    div.style.backgroundColor = "rgb(255, 0, 127)";
    para.innerHTML = "<h1>Rezwana Chowdhury Bannya</h1><br/Eminent Bangladeshi Rabindra Sangeet singer Rezwana Chowdhury Bannya is going to receive the ‘Feroza Begum Memorial Gold Medal’ this year. <br/>On the occasion of celebrating the birth anniversary of late legendary Nazrul Sangeet exponent Feroza Begum, Dhaka University (DU) is going to organise the event for the second time at Nawab Ali Chowdhury Senate Bhaban, University of Dhaka on July 27.";
    score.innerHTML = parseInt(score.innerHTML) + 1;
    return sound.paused ? sound.play() : sound.pause();
}