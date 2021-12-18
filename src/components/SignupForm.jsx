import React from "react";
import "./SignupForm.css";

function SignupForm(props) {
  return (
    <form className="signup-form">
      <div className="signup-portrait">
        <div className="signup-portrait__frame">
          <div>
            <img src="images/signup-maennchen.png" alt="prov portrait" />
          </div>
          <div className="signup-portrait__progress">30%</div>
        </div>
      </div>
      
      <div className="signup-fields">
        <div className="signup-input__vorname">
          <input
            type="text"
            name="vorname"
            placeholder="Ihr Vorname"
            required
          />
        </div>
        <div className="signup-input__nachname">
          <input
            type="text"
            name="nachname"
            placeholder="Ihr Nachname"
            required
          />
        </div>
        <div className="signup-input__email">
          <input type="email" name="email" placeholder="Ihre E-Mail" required />
        </div>
        <div className="signup-input__street">
          <input
            type="text"
            name="street"
            placeholder="Name Ihrer Strasse"
            required
          />
        </div>
        <div className="signup-input__hsnr">
          <input type="text" name="hsnr" placeholder="Nr" required />
        </div>
        <div className="signup-input__plz">
          <input type="text" name="plz" placeholder="plz" required />
        </div>
        <div className="signup-input__city">
          <input type="text" name="city" placeholder="Ihr Wohnort" required />
        </div>

        <button className="signup-button">User generieren</button>
      </div>
    </form>
  );
}

export default SignupForm;
