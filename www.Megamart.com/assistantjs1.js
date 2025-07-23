const btn = document.querySelector('.talk');
const content = document.querySelector('.content');

function speak(sentence) {
    const text_speak = new SpeechSynthesisUtterance(sentence);

    text_speak.rate = 1;
    text_speak.pitch = 1;

    window.speechSynthesis.speak(text_speak);
}

function wishMe() {
    var day = new Date();
    var hr = day.getHours();

    if (hr >= 0 && hr < 12) {
        speak(" , good Morning ,");
    }

    else if (hr == 12) {
        speak(" , Good noon, ");
    }

    else if (hr > 12 && hr <= 17) {
        speak(" , Good Afternoon");
    }

    else {
        speak(" , Good Evening, ");
    }
}

 window.addEventListener('load', () => {

    speak(" , Activating Mega mart assistent.");
    wishMe();
    speak("how can i help you");

}) 

const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
const recognition = new SpeechRecognition();

recognition.onresult = (event) => {
    const current = event.resultIndex;
    const transcript = event.results[current][0].transcript;
    content.textContent = transcript;


    //  speakThis(transcript.toUpperCase());
    speakThis(transcript.toLowerCase());
}

btn.addEventListener('click', () => {
    recognition.start();
})

function speakThis(message) {
    const speech = new SpeechSynthesisUtterance();

    speech.text = "I did not understand what you said please try again";

    /*   if (message.includes('hey') || message.includes('hello') || message.includes('hey megamart') || message.includes('hello megamart')) {
           const finalText = "How can i help you";
           speech.text = finalText;
       }*/
    if (message.includes('go to help') || message.includes('help')) {
        window.open(`https://localhost:44340/clickalert.html`, "_blank");
        const finalText = "opening  " + message + ", click help";
        speech.text = finalText;
    }
    else if (message.includes('help') || message.includes('hell')) {
        window.open(`https://localhost:44340/voicealert.html`, "_blank");
        const finalText = "opening  " + message;
        speech.text = finalText;

    }
    else if (message.includes('how are you')) {
        const finalText = "I am fine sir tell me how can i help you";
        speech.text = finalText;
    }
    else if (message.includes('who are you')) {
        const finalText = "I am megamart assistant  ,  how can i help you";
        speech.text = finalText;
    }

    else if (message.includes('name') || message.includes('what is your name')) {
        const finalText = "My name is megamart";
        speech.text = finalText;
    }
    else if (message.includes('open welcome page') || message.includes('welcome page') || message.includes('welcome')
        || message.includes('back to welcome page') || message.includes('back to welcome')) {
        window.open(`https://localhost:44340/Welcome.aspx`, "_blank");
        const finalText = "opening  " + message;
        speech.text = finalText;

    }
   else if (message.includes('location page') || message.includes('back to location page') || message.includes('maps') || message.includes('back to maps')
         || message.includes('open map page') || message.includes('open location page')) {
        window.open(`https://localhost:44340/location.aspx`, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }
     else if (message.includes('home page') || message.includes('open home page') || message.includes('back to home page') || message.includes('interface')
         || message.includes('products page') || message.includes('open products page') || message.includes('back to products page')) {
        window.open('https://localhost:44340/Home.aspx', "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }
     else if (message.includes('about page') || message.includes('open about page') || message.includes('megamart page') || message.includes('megamart')
         || message.includes('back to about page') ) {
        window.open(`https://localhost:44340/About%20Us.aspx`, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }
     else if (message.includes('services') || message.includes('open services') || message.includes('megamart services')) {
        window.open(`https://localhost:44340/services.aspx`, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }
      else if (message.includes('feedback') || message.includes('open feedback page') || message.includes('back to feedback page')
         || message.includes('megamart feedback')) {
        window.open(`https://localhost:44340/feedback.aspx`, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }
    else if (message.includes('user page') || message.includes('my page') || message.includes('my account') || message.includes('megamart account')
         || message.includes('back to user page')) {
        window.open('https://localhost:44340/User.aspx', "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
    }
    else if (message.includes('my orders') || message.includes('myorders') || message.includes('orders'))
    {
        window.open(`https://localhost:44340/orders.aspx`, "_blank");
        const finalText = "opening  " + message;
        speech.text = finalText;

    }

   else if (message.includes('back items list') || message.includes('items list') || message.includes('list page') || message.includes('products list page')) {
        window.open(`https://localhost:44340/ItemsList.aspx`, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }
    /* /*else if (message.includes('') || message.includes('')) {
         window.open(``, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }
     else if (message.includes('') || message.includes('')) {
         window.open(``, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }
     else if (message.includes('') || message.includes('')) {
         window.open(``, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }*/


   


    else if (message.includes('where is your location')) {
        const finalText = "my location in megamart website";
        speech.text = finalText;
    }
    else if (message.includes('where are you from')) {
        const finalText = "i am from  megamart website";
        speech.text = finalText;
    }
    else if (message.includes('open vegetables') || message.includes('vegetables') || message.includes('back to vegetables')
        || message.includes('open vegetable') || message.includes('vegetable') || message.includes('back to vegetable')
          || message.includes('tomato') || message.includes('tamato') || message.includes('brinjal') || message.includes('spinach')
          || message.includes('bottle gourd') || message.includes('cabbage') || message.includes('ladies finger') || message.includes('green chilli')
        || message.includes('drumstick') || message.includes('drumsticks') || message.includes('onion') || message.includes('potato'))
      {
        window.open(`https://localhost:44340/vegetables.aspx`,"_self");
          const finalText = "opening  " + message;
          speech.text = finalText;
      }
  
      else if (message.includes('open fruits ') || message.includes('fruits') || message.includes('back to fruits')
          || message.includes('mango') || message.includes('apple') || message.includes('banana') || message.includes('pineapple') || message.includes('pomegranate')
          || message.includes('strawberry') || message.includes('papaya') || message.includes('orange') || message.includes('grapes') || message.includes('watermelon'))
      {
        window.open(`https://localhost:44340/fruits.aspx`,"_self");
          const finalText = "opening  " + message;
          speech.text = finalText;
      }
    else if (message.includes('open cool drinks') || message.includes('cool drinks') || message.includes('back to cool drinks')
        || message.includes('open cool drink') || message.includes('cool drink') || message.includes('back to cool drink')
        || message.includes('coco-cola') || message.includes('pepsi') || message.includes('fanta') || message.includes('7up')
        || message.includes('thumbs up') || message.includes('string') || message.includes('sting') || message.includes('sprite')
        || message.includes('mountain dew') || message.includes('pulpi orange') || message.includes('maaza') || message.includes('maza')) {
        window.open(`https://localhost:44340/cooldrinks.aspx`,"_self");
          const finalText = "opening  " + message;
          speech.text = finalText;
      } 
      else if (message.includes('open groceries') || message.includes('groceries') || message.includes('back to groceries')
          || message.includes('open grocery') || message.includes('grocery') || message.includes('back to grocery') || message.includes('3 roses') || message.includes('groundnut')
          || message.includes('sunflower oil') || message.includes('sugar') || message.includes('chana dal') || message.includes('chilli powder') || message.includes('salt')
        || message.includes('colgate') || message.includes('tide') || message.includes('tired') || message.includes('lux')) {
          window.open(`https://localhost:44340/groceryaspx.aspx`,"_self");
          const finalText = "opening  " + message;
          speech.text = finalText;
      }
      else if (message.includes('open pharmacy') || message.includes('pharmacy') || message.includes('back to pharmacy')
          || message.includes('paracetamol 500mg') || message.includes('calcium capsule') || message.includes('antiseptic cream') || message.includes('hydraserum 20%')
        || message.includes('vaporub') || message.includes('paracetamol') || message.includes('dolo 650') || message.includes('dolo')
        || message.includes('cetaphil') || message.includes('serup') || message.includes('syrup') || message.includes('vitamin b12') || message.includes('Med Derma')
        || message.includes('medicines') || message.includes('eno') || message.includes('you known') || message.includes('cream')
        || message.includes('derm cream') || message.includes('i known')) {
          window.open(`https://localhost:44340/PHARMACY.aspx`, "_blank");
          const finalText = "opening  " + message;
          speech.text = finalText;
      }
    else if (message.includes('open cosmetics') || message.includes('cosmetics') || message.includes('back to cosmetics')
        || message.includes('open cosmetic') || message.includes('cosmetic') || message.includes('back to cosmetic')
          || message.includes('himalaya cream') || message.includes('yardles powder') || message.includes('johnson baby oil') || message.includes('yardley perfume')
        || message.includes('vaseline') || message.includes('vaslin') || message.includes('eye lines') || message.includes('himalaya fairness cream')
        || message.includes('niva body lotion') || message.includes('nivea body lotion') || message.includes('Nivea body lotion')
        || message.includes('ponds gel') || message.includes('lalime body cream') || message.includes('lipstick')
        || message.includes('powder') || message.includes('lakme body cream') || message.includes('ponds glej') || message.includes('i lines')
        || message.includes('Johnson Baby Oil') || message.includes('Baby Oil') || message.includes('baby oil') || message.includes('eyeliner')) {
        window.open(`https://localhost:44340/cosmetics.aspx`, "_self");
          const finalText = "opening  " + message;
          speech.text = finalText;
      }
     /* else if (message.includes('what is') || message.includes('who is') || message.includes('what are')) {
          window.open(`https:   //www.google.com/search?q=${message.replace(" ", "+")}`, "_blank");
          const finalText = "This is what i found on internet regarding " + message;
          speech.text = finalText;
      }*/

    /* else if (message.includes('wikipedia')) {
         window.open(`https  ://en.wikipedia.org/wiki/${message.replace("wikipedia", "")}`, "_blank");
         const finalText = "This is what i found on wikipedia regarding " + message;
         speech.text = finalText;
     }
     */
    else if (message.includes('time')) {
        const time = new Date().toLocaleString(undefined, { hour: "numeric", minute: "numeric" })
        const finalText = time;
        speech.text = finalText;
    }

    else if (message.includes('date')) {
        const date = new Date().toLocaleString(undefined, { month: "short", day: "numeric" })
        const finalText = date;
        speech.text = finalText;
    }


    /*  else {
          window.open('https: //localhost:44377/HtmlPage1.html');
          const finalText = message+"Is Invalid command.  Click HELP, for helping";
          speech.text = finalText;
      }*/
    /* else if (message.includes('go to help') || message.includes('help')) {
         window.open(`https ://localhost:44377/alert.html`, "_blank");
         const finalText = "opening  " + message;
         speech.text = finalText;
     }*/
    else if (message.includes('hey') || message.includes('hello') || message.includes('hey megamart') || message.includes('hello megamart')) {
        const finalText = "How can i help you";
        speech.text = finalText;
    }
    else {
        window.open('https://localhost:44340/assistant2.html');
        const finalText = message + "Is Invalid command, speak help command, or, click help  ";
        speech.text = finalText;
    }
    /*else {
       window.open(`https  ://www.google.com/search?q=${message.replace(" ", "+")}`, "_blank");
       const finalText = "I found some information for " + message + " on google";
       speech.text = finalText;
   }*/

    speech.volume = 2;
    speech.pitch = 1;
    speech.rate = 1;

    window.speechSynthesis.speak(speech);
}