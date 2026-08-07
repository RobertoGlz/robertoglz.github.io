---
permalink: /
title: ""
excerpt: "About me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<h1 id="typing-heading"><span id="typed-text"></span><span id="typed-caret" aria-hidden="true"></span></h1>

<style>
  #typing-heading { min-height: 1.2em; margin-top: 0; }
  #typed-caret {
    display: inline-block;
    width: 2px;
    height: 0.85em;
    margin-left: 3px;
    vertical-align: text-bottom;
    background: #40587A;
    animation: rgt-caret-blink 0.7s steps(1) infinite;
  }
  #typed-caret.rgt-done { animation: none; opacity: 0; }
  @keyframes rgt-caret-blink { 0%, 100% { opacity: 1; } 50% { opacity: 0; } }
</style>

<script>
  (function () {
    var phrase  = "Welcome to my website!";
    var textEl  = document.getElementById("typed-text");
    var caret   = document.getElementById("typed-caret");
    if (!textEl) { return; }

    /* Type once, then stop -- no deleting, no looping. */
    var i = 0;
    (function type() {
      if (i < phrase.length) {
        textEl.textContent += phrase.charAt(i++);
        setTimeout(type, 90);
      } else if (caret) {
        /* Freeze the caret shortly after finishing so the header stays fixed. */
        setTimeout(function () { caret.classList.add("rgt-done"); }, 1200);
      }
    })();
  })();
</script>

### Research

I am a scholar doing research in Development Economics and Political Economy.<br /> My goal as a researcher is to provide insights that help end poverty.

I work as a Research Fellow at Stanford GSB.

Within my webpage you can find my [Research](https://robertoglz.github.io/research), [CV](https://robertoglz.github.io/files/robertogonzalez_cv.pdf), and [Teaching materials](https://robertoglz.github.io/teaching).

Please, do reach out if you are interested in collaborating in research projects.

### Educational Background

I graduated from an MA in Economic Theory at ITAM in December 2024 in Mexico City. I expect to get my degree in 2026. 

I hold a BA in Economics (ITAM, 2022). You can look at my undergrad thesis exploring the effects of Seguro Popular on mortality [here](https://robertoglz.github.io/files/tesis_BA_RobertoGonzalez.pdf). I was awarded with _Honorary Mention_ in the _2023 Banamex Prize in Economic Research_ in the Undergraduate Theses category due to this work.

### Non-academic things I enjoy

I like playing football (soccer), going out for runs, biking, bouldering, and playing tennis.<br /> I enjoy drinking mate or a good espresso. 
