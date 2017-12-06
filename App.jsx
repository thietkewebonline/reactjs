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

    componentDidMount = () => {
        this.fetchApi();
    }
    fetchApi = () => {
        axios.get('/ci/welcome/api')
            .then(function (response) {
                console.log(response);
                this.setState({
                    data: response.data
                });
            })
            .catch(function (error) {
                console.log(error);
            });
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