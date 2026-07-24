import { useEffect, useState } from "react";
import api from "../services/api";
import "../styles/table.css";

function Students() {

  const [students, setStudents] = useState([]);

  const [student, setStudent] = useState({
    name: "",
    email: "",
    password: "",
    rollNo: "",
    department: "",
    year: "",
    semester: ""
  });

  useEffect(() => {
    loadStudents();
  }, []);

  const loadStudents = async () => {
    const res = await api.get("/student");
    setStudents(res.data);
  };

  const handleChange = (e) => {
    setStudent({
      ...student,
      [e.target.name]: e.target.value
    });
  };

  const addStudent = async () => {

    await api.post("/student", student);

    alert("Student Added");

    setStudent({
      name:"",
      email:"",
      password:"",
      rollNo:"",
      department:"",
      year:"",
      semester:""
    });

    loadStudents();
  };

  const deleteStudent = async(id)=>{

      await api.delete(`/student/${id}`);

      loadStudents();

  };

  return (

    <div className="container">

      <h1>Students</h1>

      <div className="form">

        <input
          name="name"
          placeholder="Name"
          value={student.name}
          onChange={handleChange}
        />

        <input
          name="email"
          placeholder="Email"
          value={student.email}
          onChange={handleChange}
        />

        <input
          name="password"
          placeholder="Password"
          value={student.password}
          onChange={handleChange}
        />

        <input
          name="rollNo"
          placeholder="Roll No"
          value={student.rollNo}
          onChange={handleChange}
        />

        <input
          name="department"
          placeholder="Department"
          value={student.department}
          onChange={handleChange}
        />

        <input
          name="year"
          placeholder="Year"
          value={student.year}
          onChange={handleChange}
        />

        <input
          name="semester"
          placeholder="Semester"
          value={student.semester}
          onChange={handleChange}
        />

        <button onClick={addStudent}>
          Add Student
        </button>

      </div>

      <table>

        <thead>

          <tr>

            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Roll No</th>
            <th>Department</th>
            <th>Year</th>
            <th>Semester</th>
            <th>Action</th>

          </tr>

        </thead>

        <tbody>

          {
            students.map((s)=>(
              <tr key={s.studentId}>

                <td>{s.studentId}</td>
                <td>{s.name}</td>
                <td>{s.email}</td>
                <td>{s.rollNo}</td>
                <td>{s.department}</td>
                <td>{s.year}</td>
                <td>{s.semester}</td>

                <td>

                  <button
                  className="delete"
                  onClick={()=>deleteStudent(s.studentId)}>
                    Delete
                  </button>

                </td>

              </tr>
            ))
          }

        </tbody>

      </table>

    </div>

  );

}

export default Students;