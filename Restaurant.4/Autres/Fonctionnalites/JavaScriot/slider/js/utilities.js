'use strict';   // Mode strict du JavaScript

function installEventHandler(selector, type, eventHandler)
{
  var domObject;
  
  // récupération du premier objet DOM correspondant au sélecteur.
  domObject = document.querySelector(selector);
  
  // Installation d'un gestionnaire d'évènement sur cet objet DOM.
  domObject.addEventListener(type, eventHandler);
}