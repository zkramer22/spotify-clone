import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';

class Sidebar extends React.Component {
  constructor(props) {
    super(props)
    this.state = {

    };
    this.handleLogout = this.handleLogout.bind(this);
  }

  handleLogout(e) {
    e.preventDefault();
    this.props.history.push("/");
    this.props.logout()
  }

  render() {
    const { currentUser } = this.props;

    return (
      <div className="sidebar">
        <img
          className="sidebar-logo"
          src="https://www.numerama.com/content/uploads/2016/01/spotify.png"
          style={{marginBottom: "10px"}}/>

        <div className="sidebar-link-container">
          <Link to="/search">
            <span style={{ marginRight: "140px" }}>Search</span>
            <i className="fa fa-search"></i>
          </Link>
        </div>

        <div className="sidebar-link-container">
          <Link to="/collection/playlists">
            <span style={{ marginRight: "110px" }}>Your Music</span>
            <i className="fa fa-headphones"></i>
          </Link>
        </div>

        <div className="sidebar-link-container">
          <Link to="/collection/playlists">
            <span style={{ marginRight: "105px" }}>
              { currentUser.email_address }
            </span>
          </Link>
          <button
            className="logout-button"
            onClick={ this.handleLogout }>LOGOUT
          </button>
        </div>

      </div>
    );
  }
}

export default withRouter(Sidebar);
