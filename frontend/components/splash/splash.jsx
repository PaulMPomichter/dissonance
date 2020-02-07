import React from 'react';
import { Link } from 'react-router-dom';
import SplashArt from './splash_art';

const Splash = ({ loggedIn }) => {
  const appLink = loggedIn ? (
    <Link to="/channels/@me" className="button">
      Open
    </Link>
  ) : (
    <Link to="/login" className="button">
      Login
    </Link>
  )
  return (
    <div className="splash">
      <nav className="splash-nav">
        <ul>
          <Link to="/">
            <div className="logo-container">
              <svg viewBox="0 0 33 36" className="splash-logo">
                <ellipse cx="19.6" cy="17.1" rx="2" ry="1.585" />
                <ellipse cx="12.8" cy="17.1" rx="2" ry="1.585" />
                <path xmlns="http://www.w3.org/2000/svg" d="M 28.5 0 L 3.8 0 C 1.735 -0.012 0.043 1.635 0 3.7 L 0 28 C 0.007 30.08 1.721 31.748 3.8 31.7 L 24.8 31.7 L 23.8 28.4 L 26.2 30.5 L 28.4 32.5 L 32.4 35.9 L 32.4 3.7 C 32.275 1.633 30.571 0.016 28.5 0 Z M 18.051 9.507 C 19.377 9.507 19.825 9.468 19.054 8.697 L 17.672 7.606 C 19.563 7.674 23.011 9.233 24.5 10.4 C 26.21 13.64 28.817 23.849 21.155 23.696 C 21.155 23.696 20.553 22.798 20.053 22.098 C 21.358 21.789 21.82 20.821 21.101 21.15 C 20.231 21.508 19.625 21.626 18.7 21.8 C 17.11 22.051 15.49 22.051 13.9 21.8 C 12.973 21.636 12.067 21.367 11.2 21 C 10.8 20.8 10.931 21.773 12.2 22.1 C 11.6 22.8 11 23.6 11 23.6 C 3.591 23.6 6.39 13.64 8.1 10.4 C 9.589 9.233 12.817 7.674 14.708 7.606 L 13.5 8.7 C 13.136 9.064 12.7 9.481 14.242 9.481" />
              </svg>
              <h1 className="dissonance-logo-text">&nbsp;DISSONANCE</h1>
            </div>
          </Link>
          <li>
            <a href="https://github.com/PaulMPomichter/dissonance" target="_blank" rel="noopener noreferrer">
              by Paul Pomichter
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="https://github.com/PaulMPomichter/dissonance" target="_blank" rel="noopener noreferrer">
              <i className="fab fa-github"></i>
            </a>
          </li>
          <li>
            {appLink}
          </li>
        </ul>
      </nav>
      <section className="splash-content">
        <h1>It&apos;s time to ditch Skype and Teamspeak.</h1>
        <p>
          All-in-one voice and text chat for gamers that&apos;s free, secure, and works on both your desktop and phone. Stop paying for TeamSpeak servers and hassling with Skype. Simplify your life.
        </p>
        <div className="splash-buttons-container">
          <div className="splash-button-container">
            <Link to="/register" className="download-button">
              Register for an account
            </Link>
          </div>
          <div className="splash-button-container">
            <Link to={loggedIn ? "/channels/@me" : "/login"} className="open-app-button">
              Log in to an existing account
            </Link>
          </div>
        </div>
      </section>
      <SplashArt />
    </div>
  )
}

export default Splash;