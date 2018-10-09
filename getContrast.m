function contrast = getContrast(img)
    im = double(img);
    f = 65535.0;
    m = im;
    m_minCorrect = m - min(m(:));

    m_maxNorm = (m_minCorrect*f) / max(m_minCorrect(:));

    m_stretch = m_maxNorm;
    contrast = std2(m_stretch)/mean2(m_stretch);

        
end