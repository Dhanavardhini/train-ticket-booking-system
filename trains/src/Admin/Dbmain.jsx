
import './Dbmain.css'
import Navbar from './Nav'
import Dashboard from './Dashboard'
import "./Nav.css"
import { Route, Routes,useLocation } from 'react-router-dom'
import Addandmanage from './Addandmanage'
import Userslist from './Userslist'
import Logout from './Logout'
import Userlogin from './Userlogin'
import Addtwowheel from './Addtwowheel'
import Bookings from '../Userpanel/Fourbook'
import Rentlanding from './Rentlanding'
import Register from './R'


export default function Dbmain() {
  const location = useLocation();

 
  const hideNavbarRoutes = ['/fourbook', '/bookform','/register'];

 
  const shouldHideNavbar = hideNavbarRoutes.some(route =>
    location.pathname.startsWith(route)
  );
  
  return (
   <>
      <div className="db-main">
      {!shouldHideNavbar && <Navbar />}
        <Routes>
        <Route path={"/"} element={<Rentlanding/>} />
        <Route path={"/dash"} element={<Dashboard />} />
        <Route path={"/two"} element={<Addandmanage />} />
        <Route path={"/fourbook/:id"} element={<Bookings />} />
        <Route path={"/addtwo"} element={<Addtwowheel/>} />
        <Route path={"/userd"} element={<Userslist />} />
        <Route path={"/logout"} element={<Logout />} />
        <Route path={"/register"} element={<Register />} />
        <Route path={'/user'} element={<Userlogin />} />
        </Routes>   
    </div>   
   </>
  )
}
