import React, { Component } from 'react';

class GameContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {

    }
  }

  componentDidMount() {
    App.gameChannel = App.cable.subscriptions.create(
      {
        channel: "GameChannel",
        game_id: 1 //this.props.gameId
      },
      {
        connected: () => console.log("GameChannel connected"),
        disconnected: () => console.log("GameChannel disconnected"),
        received: data => {
          console.log(data)
        }
      }
    );
  }

  render() {

    return(
      <div>poo tee weet</div>
    )
  }
}

export default GameContainer;
