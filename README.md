#FOLIO 

FOLIO is a web app meant to help people manage their digital and print projects, 
more specifically in the translation field. The current version of this app provides a 
platform for translators to bid on their projects, for clients to assign projects to 
translators, and for translators to deliver the translated documents to their clients.

|Table of Contents|
|-----------------|
|[1. Links](#links)|
|[2. Getting started](#get-started)|
|[3. How it started](#origin)|
|[4. Explanation of technologies used](#tools)|
|[5. Unsolved problems](#problems)|

<hr>

##<a name="links">1. Links</a>

[1]: https://translate-app-v1.herokuapp.com/

[Deployed App][1]  
[Github repo (you're here!)](https://github.com/winniecluk/translate_app_v1)  
[Trello Board](https://trello.com/b/qN2I2rkg/folio)

##<a name="get-started">2. Getting started</a>

Go to the [deployed app][1] on Heroku. For now, you should only sign up as a client or as one of the three vendor classes: translators, transcribers, and graphic designers.

All new users will be directed to add more information to their profile after 
they've registered. As a client, you don't really need to be too concerned about that; 
As a vendor, you'll want to be as specific as possible when completing your profile, 
because clients will likely look at your profiles when choosing a vendor.

As a client, get started by uploading a project. Check on your uploaded projects to 
see if anyone has bid on them. Once you receive a bid you like and hopefully from a 
vendor you like, go ahead and assign that project to a vendor. Check back on that 
project on the delivery date to see if your vendor uploaded their work. Once you're 
satisfied with the work, go ahead and mark that project complete. You'll be able to 
refer back to that translation through your dashboard whenever you like.

As a vendor, get started by checking the jobs board to see if any of the projects 
require your qualifications. Once you see something you like, click on the project to 
take a look at the document and bid on it. You'll be able to see bids from other vendors as well. All bids you make will stay in your Active Bids table on your dashboard *until* the client has assigned the project. You have the option of removing or editing your bid until then.

If the client chooses your bid, that bid will be removed from your Active Bids table and will 
migrate down to your Projects In Progress table. Once you've completed the project, click on the 
project name in your Progrects In Progress and upload your work. If the client is satisfied, they'll mark it complete, and the details of the project will show up in your completed projects table.

##<a name="origin">3. Origin</a>

I started this project because I wanted to fix all the problems I saw at my old job:

|Problem|One Potential Solution|
|-------|----------------------|
|Clients, vendors, and agencies are all communicating with each other via email, which can be slow and inefficient. Emails get lost very easily in the ether.|Have an online transaction platform that spares words, gathers all pertinent information in one place, and expedites communication about the project.|
|Inexperienced vendors who send out solicitation emails often do not state their most important qualifications, minimum rates, rush rates, etc.; it's more inconvenient to hire them. | Put these fields in a form and require them to complete it.|
|When wendors who worked with us often went on vacation, they would usually send us an email stating their vacation dates. We kept a shared spreadsheet just to mark when people were going on vacation, but nobody would check the spreadsheet because we'd be too busy.|I just need to know if people are available or not. Give them a profile page and if the vendor goes on vacation, they can change their available status themselves.|
|Clients with time-sensitive projects worry that their work will not be delivered on time and are constantly checking in on the status over the phone.|Create a real-time editing console that will show the translator's work as they're working on it and persist the data.|
|Clients calling to say, "I got this marriage certificate translated by you guys three years ago. Can you find it for me?" **Me:** "Sir, I'm looking through the records right now; we didn't do any work for you in 2013."  **Client:** "Oh, you know what? It was four years ago. Could you look again?"  **Me:** "Sir, we don't have any documents past the last three years. I'm sorry, but I really need to get back to work."|Clients should have a place where they can access the documents themselves.|

##<a name="tools">4. Explanations of technologies used</a>

**Ruby version:** 2.3.1  
**Rails version:** 5.0.0  
**Bootstrap version:** 3

Ruby is a programming language. A programming language is how we 
humans talk to machines. A programming language is the thing that bridges 
the gap between "do this" and "1101010101." Relative to the other languages out there, 
Ruby will help us out a bit more, because instead of putting "if(something something){do this}", we can stop saying parenthesis parenthesis curly bracket another curly and just be like "do this if whatever?" and Ruby will return an answer. Ruby's such a great communicator. Ruby's kind of like your mom, if you have an awesome mom.

Rails is a web application framework. Rails is like a guy who knows how to 
get to Narnia. I mean, could you get to Narnia yourself if you really wanted to? 
Sure you could, but it would take you forever to find the right closet. And here's 
this guy who already knows how to get there and rearrange the pottery around Aslan's mound 
if you ask him real nice, in the way he likes.

So Rails is one of those guys who already has ways to get to Narnia. 
And then you decide to date the guy, because, well, why not? Like a promising first date,
he's got a lot of things going for it, but there are some things 
going on behind the scenes you won't find out until later. "I'll make this so easy for you," he whispers seductively into your ear. "You want to see Alambil at night? You want to visit Mr. Tumnus' house? I bought you a roundtrip pass, baby." Later on you find out Rails is a creature of habit and wants to do things his way. If you let him drive, he'll just go underneath that stupid stone overpass everytime when you just want to dart straight for that closet. If you're good at communicating, then maybe you can try to manipulate him so that he does something 
other than what he normally does.

You gotta be able to Ruby to talk to Rails. Rails runs on Ruby. To help illustrate this, I drew a picture for you: 


Sure wish I'd known all this before I finished the project.

I spent all my time dating Rails, so I didn't spend much time around Bootstrap. 
Bootstrap knows the way to Pandora, not Narnia. 


##<a name="problems">5. Unsolved Problems</a>

Where to start.

There are the tiny information gaps. I forgot to list the currency as USD. Should have used the timezone attribute to calculate the vendor's current time. Need more validation methods, but I got 
so tired at stuff breaking due to validation that I scrapped it just to finish this thing by the deadline. Would really like to eventually add that real-time editing console and a messaging system.

Waaay too much stuff in the view, which is similar to the problem I had last time. However, third time is the charm! Doing these projects is like giving birth. After you pop out the two ugly babies, the third is the most precious child you'll ever have.

Need more expressive logic. Feel like a second-grader. Practice?

Should have restricted to one type of vendor and put less information. Adding more attributes is useful information for people who work in the translation field, but not useful for developers who have nothing

Didn't pseudocode. Wireframed and went straight to getting resources/CRUD up since I was anxious about getting this done on time. The first two went up without too much hassle but adding the third and getting it to relate the way I wanted them to was not funtimes. Maybe it would have been funtimes without a deadline.

Next time: wireframe, pseudocode, and then **show pseudocode to instructor first** before proceeding. I got suggestions that would have made this project so much easier.
