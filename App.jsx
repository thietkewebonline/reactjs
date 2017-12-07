import React from 'react';
import axios from "axios";

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            data: {
                username: "",
                email: "",
            }
        }
    }

    componentDidMount() {
        console.log("did mount");
        this.fetchApi();
    }

    fetchApi() {
        console.log("fetch api");
        axios.get('http://localhost/test2/test_react/ci/index.php/welcome/api')
            .then((response) => {
                console.log(response);
                this.onDataChange(response.data ? response.data.data : "");
            })
            .catch(function (error) {
                console.log(error);
            });
    }

    onDataChange(data) {
        console.log("on data change");
        if (data) {
            this.setState({
                data,
            });
        }
    }

    render() {
        return (
            <div>
                Hello World!!! your name is: {this.state.data.username}
            </div>
        );
    }
}

export default App;