import { Routes, Route } from "react-router-dom";

import Home from "./pages/Home";
import FacultyLogin from "./pages/FacultyLogin";
import StudentLogin from "./pages/StudentLogin";

import FacultyDashboard from "./pages/FacultyDashboard";
import StudentDashboard from "./pages/StudentDashboard";

import Students from "./pages/Students";
import Faculty from "./pages/Faculty";
import Subjects from "./pages/Subjects";
import Attendance from "./pages/Attendance";

import MyAttendance from "./pages/MyAttendance";
import Profile from "./pages/Profile";

function App() {

  return (

    <Routes>
      <Route path="/" element={<Home />} />

      <Route path="/faculty-login" element={<FacultyLogin />} />

      <Route path="/student-login" element={<StudentLogin />} />

      <Route path="/faculty-dashboard" element={<FacultyDashboard />} />

      <Route path="/student-dashboard" element={<StudentDashboard />} />

      <Route path="/students" element={<Students />} />

      <Route path="/faculty" element={<Faculty />} />

      <Route path="/subjects" element={<Subjects />} />

      <Route path="/attendance" element={<Attendance />} />

      <Route path="/myattendance" element={<MyAttendance />} />

      <Route path="/profile" element={<Profile />} />

    </Routes>

  );

}

export default App;