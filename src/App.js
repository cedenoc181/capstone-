import './App.css';
import React, {useState, useEffect} from 'react'
import { Routes, Route, BrowserRouter} from 'react-router-dom';
import axios from 'axios';
// import Home from './components/Home';
import Header from './components/Header';
// import Pt from './components/Pt';
// import Login from './components/Login';
// import Exercise from './components/Exercise';
// import Account from './components/Account';


function App() {
const [therapist, setTherapist] = useState([]);
// const [user, setUser] = useState({});
// const [exercise, setExercise] = useState([]);

useEffect(() =>{
  axios.get('/physical_therapist')
  .then((res) => {
    console.log(res.data)
    setTherapist(res.data);
  });
}, [])
console.log(therapist)


  return (

   <div>

    <Header />

<BrowserRouter>
    <Routes>
      {/* <Route path="/" element={<Home />} /> */}
      <Route path="Header" element={<Header />} />
      {/* <Route path="Pt" element={<Pt therapist={therapist} />} /> */}
      {/* <Route path="Login" element={<Login />} /> */}
      {/* <Route path="Exercise" element={<Exercise />} /> */}
      {/* <Route path="Account" element={<Account therapist={therapist} />} /> */}
    </Routes>
    </BrowserRouter>
   </div>
  );
}

export default App;