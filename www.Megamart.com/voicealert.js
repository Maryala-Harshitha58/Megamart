if (annyang) {
    // Let's define a command.
    const commands = {
        'help': () => { swal("MEGAMART ASSISTANT COMMANDS", "Back= back to Assistant    \n hey = Hello sir, how can i help you \n hello = Hello sir, how can i help you \n hey megamart = hello sir, how can i help you \n hello megamart = hello sir, how can i help you  \n how are you = i am fine sir, tell me how can i help you \n who are you = i am megamart assistant, how can i help you \n where are you from = i am from  megamart website \n where is your location = my location in megamart website \n       name = My name is megamart \n What is your name = My name is megamart  \n date = current date display \n time = current time display \n open vegetables, vegetabes = opening vegetables page", "success"); }
    };

    // Add our commands to annyang
    annyang.addCommands(commands);
    annyang.start();

    //const web = {
    //    'back': () => {
    //        window.open('assistant2.html', "_self");
    //    }
    //};
    //annyang.addCommands(web);
    //// Start listening.
    //annyang.start();


    const com = {
        'back': () => {
            window.open('assistant2.html', "_self");
        }
    };
    annyang.addCommands(com);
    // Start listening.
    annyang.start();


}


