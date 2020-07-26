#include "gamemap.h"

GameMap::GameMap(QObject *parent) : QObject(parent)
{
    m_data.resize(MagicTower::MAP_LAYER);
    for (int i = 0; i < MagicTower::MAP_LAYER; i++) {
        m_data[i].resize(MagicTower::MAP_HEIGHT);
        for (int j = 0; j < MagicTower::MAP_HEIGHT; j++) {
            m_data[i][j].resize(MagicTower::MAP_WIDTH);
        }
    }
}


QString GameMap::getData(int l, int x, int y) const {
    return m_data[l][x][y];
}

void GameMap::setData(int l, int x, int y, const QString &newValue) {
//    qDebug("GameMap::setData(%d, %d, %d, %s)", l, x, y, newValue.toStdString().c_str());
    if (m_data[l][x][y] != newValue) {
        m_data[l][x][y] = newValue;
        emit dataChanged(l, x, y, newValue);
    }
}
