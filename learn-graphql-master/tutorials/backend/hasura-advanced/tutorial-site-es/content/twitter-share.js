import React from 'react';

const TwitterShare = () => {
    return(
        <React.Fragment>
            <a href="https://twitter.com/intent/tweet?&text=I just completed this Hasura Advanced Backend Tutorial by @HasuraHQ. Check it out here - https://hasura.io/learn/es/graphql/hasura-advanced/introduction/" target="_blank" rel="noopener noreferrer">
                <img className={'twitterIcon'} src={'https://img.icons8.com/color/48/000000/twitter.png'} alt={'Twitter'} />
            </a>
        </React.Fragment>
    )
};

export default TwitterShare;