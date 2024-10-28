import React, { useEffect, useState } from "react";
import TemplateAdmin from "../template/TemplateAdmin";
import { Row, Col, Table } from "react-bootstrap";
import FemaleIcon from '@mui/icons-material/Female';
import MaleIcon from '@mui/icons-material/Male';
import { useNavigate } from "react-router-dom";
import { Pagination } from "antd";
import axios from "axios";

const ManagerUser = () => {
    const [token] = useState(sessionStorage.getItem("token"));
    const [role] = useState(sessionStorage.getItem("role"));
    const navigate = useNavigate();

    useEffect(() => {
        if (role === "USER_MENTEE" || role === "USER_MENTOR") {
            navigate("/error");
        }
    }, []);

    const headers = {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
    };

    const [user, setUser] = useState([]);
    const [currentPage, setCurrentPage] = useState(1);
    const [usersPerPage] = useState(5);

    useEffect(() => {
        fetch("http://localhost:8080/api/user", { method: "GET", headers })
            .then((resp) => resp.json())
            .then((data) => setUser(data))
            .catch((err) => console.log(err.message));
    }, []);

    const indexOfLastUser = currentPage * usersPerPage;
    const indexOfFirstUser = indexOfLastUser - usersPerPage;
    const currentUsers = user.slice(indexOfFirstUser, indexOfLastUser);

    const paginate = (pageNumber) => setCurrentPage(pageNumber);

    // Toggle user status and update in database
    const toggleUserStatus = async (userId, currentStatus) => {
        try {
            const updatedStatus = !currentStatus;
            const response = await axios.put(
                `http://localhost:8080/api/user/${userId}/status`,
                { status: updatedStatus },
                { headers }
            );

            if (response.status === 200) {
                console.log("Status update successful for user ID:", userId);

                // Update user state to immediately show the new status
                setUser((prevUsers) =>
                    prevUsers.map((u) =>
                        u.id === userId ? { ...u, status: updatedStatus } : u
                    )
                );
            }
            else {
                console.error("Failed to update status, unexpected status code:", response.status);
            }
        } catch (error) {
            console.error("Error updating user status:", error.message);
        }
    };

    return (
        <TemplateAdmin>
            <Row>
                <Col xs={12}>
                    <Row>
                        <Col style={{ textAlign: "left", color: "blue" }}>
                            <h2>List User</h2>
                        </Col>
                    </Row>
                    <Row>
                        <Col>
                            <Table className="table border shadow">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Username</th>
                                    <th>Fullname</th>
                                    <th>Gender</th>
                                    <th>Phone</th>
                                    <th>Email</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                {currentUsers.map((u) => (
                                    <tr key={u.id}>
                                        <td>{u.id}</td>
                                        <td>{u.username}</td>
                                        <td>{u.fullname}</td>
                                        <td>
                                            {u.gender ? (
                                                <span style={{ color: "blue" }}>
                                                        <MaleIcon style={{ width: "2em", height: "40px" }} />
                                                    </span>
                                            ) : (
                                                <span style={{ color: "red" }}>
                                                        <FemaleIcon style={{ width: "2em", height: "40px" }} />
                                                    </span>
                                            )}
                                        </td>
                                        <td>{u.phone}</td>
                                        <td>{u.email}</td>
                                        <td style={{ color: u.status ? 'green' : 'red' }}>
                                            {u.status ? "Active" : "Banned"}
                                        </td>
                                        <td>
                                            <button
                                                onClick={() => toggleUserStatus(u.id, u.status)}
                                                className={`btn ${u.status ? 'btn-danger' : 'btn-success'}`}
                                            >
                                                {u.status ? "Ban" : "Unban"}
                                            </button>
                                        </td>
                                    </tr>
                                ))}
                                </tbody>
                            </Table>
                            <Pagination
                                current={currentPage}
                                total={user.length}
                                pageSize={usersPerPage}
                                onChange={paginate}
                                style={{ marginTop: "16px", textAlign: "center" }}
                            />
                        </Col>
                    </Row>
                </Col>
            </Row>
        </TemplateAdmin>
    );
};

export default ManagerUser;
