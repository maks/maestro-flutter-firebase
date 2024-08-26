/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const {onRequest} = require("firebase-functions/v2/https");
const logger = require("firebase-functions/logger");
var admin = require("firebase-admin");

const { initializeApp } = require('firebase-admin/app');
const app = initializeApp();


// Take the text parameter passed to this HTTP endpoint and insert it into
exports.adduser = onRequest(async (req, res) => {
    // Grab the text parameter.
    const name = req.query.username;
    const email = name+"@example.com";
    const password = "test1234";
    addFBUser(name, email, password);

    res.json({email: email, password: password});
  });


  function addFBUser(name, email, password) {
    admin.auth().createUser({
        email: email,
        emailVerified: false,
        phoneNumber: "+1"+Math.floor(Math.random() * 100000),
        password: password,
        displayName: name,
        photoURL: "https://gravatar.com/3c77e60e61afee1e4ff55e5ec344277f281dc64c0e3ff1156efe1044a71451fb",
        disabled: false
      })
        .then(function(userRecord) {
          // See the UserRecord reference doc for the contents of userRecord.
          console.log("Successfully created new user:", userRecord.uid);
        })
        .catch(function(error) {
          console.log("Error creating new user:", error);
        });
  }