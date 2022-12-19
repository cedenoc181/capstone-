import React from "react";
import { Link } from "react-router-dom";

function Header() {

  return (
    <div className="header">
      <nav className ="navigation">
        <Link className ="home" to="/">Home</Link>
        <Link className ="login" to="/Login">Login</Link>
        <Link className ="pt" to="/Pt">Physical Therapist</Link>
        <Link className ="exercise" to="/Exercise">Exercises</Link>
        <Link className ="account" to="/Account">Account</Link>
      </nav>
    </div>
  );
}

export default Header;
