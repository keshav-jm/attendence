import FacultyLogin from "./pages/FacultyLogin";
import StudentLogin from "./pages/StudentLogin";
import FacultyDashboard from "./pages/FacultyDashboard";
import StudentDashboard from "./pages/StudentDashboard";

<Routes>

  <Route path="/" element={<FacultyLogin />} />

  <Route path="/student-login" element={<StudentLogin />} />

  <Route path="/faculty-dashboard" element={<FacultyDashboard />} />

  <Route path="/student-dashboard" element={<StudentDashboard />} />

</Routes>