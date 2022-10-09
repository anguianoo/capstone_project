// import { Button } from "@mui/material";
// import React, { useEffect, useState } from "react";
// import { Link, Navigate, useNavigate } from "react-router-dom";
// import Login from "./Login";
// import RoomCreater from "./RoomCreator";

// export default function DashBoard() {
//   const navigate = useNavigate();
//   const [authenticated, setauthenticated] = useState(null);
//   const [user, setUser] = useState(null);

//   useEffect(() => {
//     // auto-login
//     fetch("/me").then((r) => {
//       if (r.ok) {
//         r.json().then((user) => setUser(user));
//       }
//     });
//   }, []);

//   function handleLogout() {
//     fetch("/logout", { method: "DELETE" }).then((r) => {
//       if (r.ok) {
//         setUser(null);
//       }
//     });
//   }

//   if (!user) {
//     // Redirect
//     return navigate("/login");
//   } else {
//     return (
//       <div>
//         <p>Welcome to your Dashboard</p>
//         <Button onClick={handleLogout}>Logout</Button>
//         <RoomCreater />
//       </div>
//     );
//   }
// }
