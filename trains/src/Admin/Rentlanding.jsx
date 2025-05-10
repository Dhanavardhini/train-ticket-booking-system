import React from 'react'
import './Rent.css'
import { Link } from 'react-router-dom'
function Rentlanding() {
  return (
    <>
    <div className="rentmain">
        <div className="hero">
    <div className="hero-content12">
          
            <h1 className='y'>The journey, not the destination, matters</h1>
            <p className="tagline">Trains don’t just connect places; they connect hearts and memories</p>
            <div className="btn-container2">
                <Link to={"/ad"}><a href="#" className="btn1 ">Admin Login</a></Link>
                <Link to={"/userlogin"}><a href="#" className="btn1 ">User Login</a></Link>
            </div>
        </div>
        </div>
    </div>
    </>
  )
}

export default Rentlanding